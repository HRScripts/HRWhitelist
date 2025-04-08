local HRLib <const>, Translation <const> = HRLib, Translation --[[@as HRWhitelistTranslation]]
local config <const> = HRLib.require(('@%s/config.lua'):format(GetCurrentResourceName())) --[[@as HRWhitelistConfig]]

-- Functions

---@param endpoint string
---@return { value: table?, awaitable: { value: boolean, next: function, state: integer, queue: table } }
local performRequest = function(endpoint)
    local result = { value = nil, awaitable = promise.new() }

    PerformHttpRequest(('https://discordapp.com/api/%s'):format(endpoint), function(err, data, resultHeaders)
        if err == 200 then
            result.value = json.decode(data)

            result.awaitable:resolve(true)
        else
            result.awaitable:resolve(false)
        end
    end, 'GET', '', { ['Content-Type'] = 'application/json', Authorization = ('Bot %s'):format(config.botInfo.botToken) })

    Citizen.Await(result.awaitable)

    return result
end

---@param playerId integer
---@return boolean, 'roleNotFound'|'notInServer'|'discordIdNotFound'|'idNotFound'?   
local isWhitelisted = function(playerId)
    if GetPlayerName(playerId) then
        local discordId <const>, whitelistedRoles = HRLib.PlayerIdentifier(playerId, 'discord', true), ''

        if #config.whitelistedRoles > 1 then
            for _=1, #config.whitelistedRoles do whitelistedRoles = ('%s%s'):format(whitelistedRoles, '%s | ') end
        else
            whitelistedRoles = '%s'
        end

        whitelistedRoles = whitelistedRoles:format(table.unpack(config.whitelistedRoles))

        if discordId then
            local member <const> = performRequest(('guilds/%s/members/%s'):format(config.botInfo.guildId, discordId))
            if member.awaitable.value then
                for i=1, #member.value.roles do
                    if whitelistedRoles:find(member.value.roles[i]) then
                        return true
                    end
                end

                return false, 'roleNotFound'
            else
                return false, 'notInServer'
            end
        else
            return false, 'discordIdNotFound'
        end
    end

    return false, 'idNotFound'
end

-- Main Code

HRLib.OnPlConnecting(function(source, _, _, deferrals)
    deferrals.defer()

    local whitelisted <const>, reason <const> = isWhitelisted(source)
    local identifiers <const> = HRLib.PlayerIdentifier(source, config.logs.identifiersToShow, false, true)
    local discordId <const> = HRLib.PlayerIdentifier(source, 'discord', true)

    if whitelisted and not reason then
        if not identifiers then deferrals.done() return end

        if config.logs.enable then
            local found <const>, _ <const> = string.find(config.logs.msg, '%s')

            if found - 3 ~= #identifiers then deferrals.done() return end

            HRLib.DiscordMsg(config.logs.webhook, config.logs.botName, config.logs.title, config.logs.msg:format(GetPlayerName(source), ('<@%s>'):format(discordId or 'invalid'), identifiers?[1] or 'invalid', identifiers?[2] or 'invalid', identifiers?[3] or 'invalid', identifiers?[4] or 'invalid'), nil, config.logs.colour, '', GetPlayerName(source))
        end

        if config.enableLiveConsoleLog.enableOnConnecting then
            print(Translation.msgOnConnecting:format(GetPlayerName(source)))
        end

        deferrals.done()
    else
        if config.enableLiveConsoleLog.enableOnDisconnected then
            print(Translation.msgOnDisconnected:format(GetPlayerName(source)))
        end

        deferrals.done(reason == 'roleNotFound' and Translation.discord_role_NotFound or reason == 'notInServer' and Translation.player_not_inServer or reason == 'discordIdNotFound' and Translation.discordId_notFound or reason == 'idNotFound' and Translation.player_serverId)

        return
    end
end)

HRLib.OnPlJoining(function(source)
    local whitelisted <const>, _ <const> = isWhitelisted(source)
    Player(source).state.isWhitelisted = whitelisted
end)