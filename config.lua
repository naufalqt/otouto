 -- For details on configuration values, see README.md#configuration.
return {

    -- Your authorization token from the botfather. (string, put quotes)
    bot_api_key = os.getenv('OTOUTO_BOT_API_KEY'),
    -- Your Telegram ID (number).
    admin = math.floor(os.getenv('OTOUTO_ADMIN_ID')),
    -- Two-letter language code.
    -- Fetches it from the system if available, or defaults to English.
    lang = os.getenv('LANG') and os.getenv('LANG'):sub(1,2) or 'en',
    -- The channel, group, or user to send error reports to.
    -- If this is not set, errors will be printed to the console.
    log_chat = math.floor(os.getenv('OTOUTO_LOG_ID')),
    -- The symbol that starts a command. Usually noted as '/' in documentation.
    cmd_pat = '/',
    -- The filename of the database. If left nil, defaults to $username.db.
    database_name = nil,
    -- The block of text returned by /start and /about..
    about_text = [[
I am otouto, the plugin-wielding, multipurpose Telegram bot.

Send /help to get started.
    ]],

    errors = { -- Generic error messages.
        generic = 'An unexpected error occurred.',
        connection = 'Connection error.',
        results = 'No results found.',
        argument = 'Invalid argument.',
        syntax = 'Invalid syntax.',
        specify_targets = 'Specify a target or targets by reply, username, or ID.',
        specify_target  = 'Specify a target by reply, username, or ID.'
    },

    administration = {
        -- Conversation, group, or channel for kick/ban notifications.
        -- Defaults to config.log_chat if left empty.
        log_chat = nil,
        -- link or username
        log_chat_username = nil,
        -- First strike warnings will be deleted after this, in seconds.
        warning_expiration = 120,
        -- Default flag settings.
        flags = {
            antibot = true,
            antilink = true
        }
    },

    plugins = { -- To enable a plugin, add its name to the list.
        'core.control',
        'core.luarun',
        'core.users',

        'admin.banremover',
        'admin.autopromoter',
        'admin.filterer',

        'admin.flags',
        'admin.groupinfo',
        'core.about',
        'core.ping',

        'admin.antisquig',
        'admin.antisquigpp',
        'admin.antibot',
        'admin.antilink',
        'admin.nostickers',
        'admin.filter',
        'admin.delete_left_messages',

        'admin.addadmin',
        'admin.addgroup',
        'admin.addmod',
        'admin.antihammer_whitelist',
        'admin.automoderation',
        'admin.automoderation',
        'admin.ban',
        'admin.deadmin',
        'admin.demod',
        'admin.fixperms',
        'admin.getdescription',
        'admin.getlink',
        'admin.hammer',
        'admin.kick',
        'admin.kickme',
        'admin.listadmins',
        'admin.listgroups',
        'admin.listmods',
        'admin.listrules',
        'admin.mute',
        'admin.regenlink',
        'admin.removegroup',
        'admin.setdescription',
        'admin.setgovernor',
        'admin.setrules',
        'admin.unhammer',
        'admin.unrestrict',

        'core.help'
    }

}
