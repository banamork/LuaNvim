local function default_header()
    return {
    ' ',
    ' ',
    ' ███████████████████████████ ',
    ' ███████▀▀▀░░░░░░░▀▀▀███████ ',
    ' ████▀░░░░░░░░░░░░░░░░░▀████ ',
    ' ███│░░░░░░░░░░░░░░░░░░░│███ ',
    ' ██▌│░░░░░░░░░░░░░░░░░░░│▐██ ',
    ' ██░└┐░░░░░░░░░░░░░░░░░┌┘░██ ',
    ' ██░░└┐░░░░░░░░░░░░░░░┌┘░░██ ',
    ' ██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██ ',
    ' ██▌░│██████▌░░░▐██████│░▐██ ',
    ' ███░│▐███▀▀░░▄░░▀▀███▌│░███ ',
    ' ██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██ ',
    ' ██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██ ',
    ' ████▄─┘██▌░░░░░░░▐██└─▄████ ',
    ' █████░░▐█─┬┬┬┬┬┬┬─█▌░░█████ ',
    ' ████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████ ',
    ' █████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████ ',
    ' ███████▄░░░░░░░░░░░▄███████ ',
    ' ██████████▄▄▄▄▄▄▄██████████ ',
    ' ',
    ' ',
    ' ',
    }
end

require('dashboard').setup {
    theme = 'doom',
    config = {
        header = default_header(),
        center = {
            {
                icon = ' ',
                icon_hl = 'Title',
                desc = "Add File",
                desc_hl = 'String',
                key = "a",
                keymap = "SPC a",
                key_hl = 'Number',
                action = "enew",
            }, {
                icon = '󰙅 ',
                icon_hl = 'Title',
                desc = 'Open tree',
                desc_hl = 'String',
                key = 'n',
                keymap = 'SPC n',
                key_hl = 'Number',
                action = ':Neotree float'
            }, {
                icon = '󰈞 ',
                icon_hl = 'Title',
                desc = 'Find files',
                desc_hl = 'String',
                key = 'f',
                keymap = 'SPC f f',
                key_hl = 'Number',
                action = ':Telescope find_files'
            }, {
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Find text',
                desc_hl = 'String',
                key = 'g',
                keymap = 'SPC f g',
                key_hl = 'Number',
                action = ':Telescope live_grep'
            }
        }
    }
}
