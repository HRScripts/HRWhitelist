local yourDiscordServer <const> = 'https://discord.gg/........'

return {
    bg = {
        discord_role_NotFound = 'Нямате право на достъп тук! Нямате право да се свързвате със сървъра,\nтъй като нямате ролята даваща ви това право!',
        player_not_inServer = ('Не сте в Discord сървъра!\nВръзка: %s'):format(yourDiscordServer),
        discordId_notFound = 'Вашето Discord Id беше неуспешно намерено! Не можете да се свържете със сървъра!',
        player_serverId = ('Има необичаен проблем. Можете да ни кажете в нашия discord сървър: %s'):format(yourDiscordServer),
        msgOnConnecting = '%s влиза в сървъра',
        msgOnDisconnected = '%s беше прекъснат от връзка със сървъра'
    },
    en = {
        discord_role_NotFound = 'You\'re not whitelisted! You\'re not allowed to connect to the server\nbecause you don\'t have the role that whitelistes you!',
        player_not_inServer = ('You\'re not in the discord server!\nURL Link: %s'):format(yourDiscordServer),
        discordId_notFound = 'Your Discord Id is not found! You can\'t connect to the server!',
        player_serverId = ('There is having a unusual problem. You can tell us in our discord server: %s'):format(yourDiscordServer),
        msgOnConnecting = '%s is connecting to the server',
        msgOnDisconnected = '%s was stopped from connecting to the server'
    },
    de = {
        discord_role_NotFound = 'Du bist nicht auf der Whitelist! Du darfst keine Verbindung zum Server herstellen,\nda du nicht über die Rolle verfügst, die dich auf die Whitelist setzt!',
        player_not_inServer = ('Du bist nicht auf dem Discord-Server!\nURL-Link: %s'):format(yourDiscordServer),
        discordId_notFound = 'Ihre Discord-ID wurde nicht gefunden! Sie können keine Verbindung zum Server herstellen!',
        player_serverId = ('Es liegt ein ungewöhnliches Problem vor. Sie können es uns auf unserem Discord-Server mitteilen: %s'):format(yourDiscordServer),
        msgOnConnecting = '%s stellt eine Verbindung zum Server her',
        msgOnDisconnected = '%s konnte keine Verbindung zum Server herstellen'
    },
    ru = {
        discord_role_NotFound = 'Вас нет в белом списке! Вам не разрешено подключаться к серверу,\nпоскольку у вас нет роли, которая вносит вас в белый список!',
        player_not_inServer = ('Вы не на сервере Discord!\nURL-ссылка: %s'):format(yourDiscordServer),
        discordId_notFound = 'Ваш идентификатор Discord не найден! Вы не можете подключиться к серверу!',
        player_serverId = ('Возникла необычная проблема. Вы можете сообщить нам об этом на нашем сервере Discord: %s'):format(yourDiscordServer),
        msgOnConnecting = '%s подключается к серверу',
        msgOnDisconnected = '%s не удалось подключиться к серверу'
    },
    it = {
        discord_role_NotFound = 'Non sei nella lista bianca! Non ti è consentito connetterti al server\nperché non hai il ruolo che ti consente di inserirti nella whitelist!',
        player_not_inServer = ('Non sei nel server Discord!\nLink URL: %s'):format(yourDiscordServer),
        discordId_notFound = 'Il tuo ID Discord non è stato trovato! Non puoi connetterti al server!',
        player_serverId = ('Si è verificato un problema insolito. Puoi comunicarcelo nel nostro server Discord: %s'):format(yourDiscordServer),
        msgOnConnecting = '%s si sta connettendo al server',
        msgOnDisconnected = '%s ha impedito la connessione al server'
    }
}