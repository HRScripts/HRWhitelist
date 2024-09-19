local config <const> = {}

config.language = 'en'

config.logs = {
    enable = true,
    webhook = 'https://discord.com/api/webhooks/............./............................',
    botName = 'Logs',
    title = 'Connecting Log',
    msg = 'Player Name: %s\nPlayer Discord: %s\n\n\nSteam Hex: %s\nLicense: %s\nLicense2: %s\nFivem Id: %s',
    colour = 000099, -- 000000 is 00 for red, 00 for green and 00 for blue, for example if you write 990000 here, you'll get the deepest red colour (it is like rgb but in the 00 00 00 format)
    identifiersToShow = {
        'steam',
        'license',
        'license2',
        'fivem'
    } -- Available identifiers: 'steam', 'license', 'license2', 'fivem', 'discord', 'live', 'xbl', 'ip'
}

config.botInfo = {
    guildId = 0000000000000000000,
    botToken = '..................................'
}

config.whitelistedRoles = {
    0000000000000000000
}

return config --[[@as HRWhitelistConfig]]