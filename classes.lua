---@class HRWhitelistConfig
---@field logs { enable: boolean, webhook: string, botName: string, title: string, msg: string, colour: integer, identifiersToShow: string[] }
---@field botInfo { guildId: integer, botToken: string }
---@field whitelistedRoles integer[]
---@field authorizedBotMsg string
---@field notAllowedToConnect { discord_role_NotFound: string, player_not_inServer: string, discordId_notFound: string, player_serverId: string }

---@class HRWhitelistTranslation
---@field discord_role_NotFound string
---@field player_not_inServer string
---@field discordId_notFound string
---@field player_serverId string