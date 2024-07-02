-- ███╗   ██╗███████╗ ██████╗ ███╗   ██╗
-- ████╗  ██║██╔════╝██╔═══██╗████╗  ██║
-- ██╔██╗ ██║█████╗  ██║   ██║██╔██╗ ██║
-- ██║╚██╗██║██╔══╝  ██║   ██║██║╚██╗██║
-- ██║ ╚████║███████╗╚██████╔╝██║ ╚████║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝
local head1 = "███╗   ██╗███████╗ ██████╗ ███╗   ██╗" 
local head2 = "████╗  ██║██╔════╝██╔═══██╗████╗  ██║"
local head3 = "██╔██╗ ██║█████╗  ██║   ██║██╔██╗ ██║"
local head4 = "██║╚██╗██║██╔══╝  ██║   ██║██║╚██╗██║"
local head5 = "██║ ╚████║███████╗╚██████╔╝██║ ╚████║" 
local head6 = "╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝"
local sins  = ""
require('dashboard').setup {
        theme = 'hyper', -- theme is doom and hyper default is hyper
        disable_move = false, -- default is false disable move keymap for hyper
        shortcut_type = 'letter', -- shorcut type 'letter' or 'number'
        change_to_vcs_root = false, -- default is false, for open file in hyper mru. it will change to the root of vcs
        config = {
		header = {head1,head2,head3,head4,head5,head6},
		footer = {sins},
	}, -- config used for theme
        hide = {
            statusline = true, -- hide statusline default is true
            tabline = true, -- hide the tabline
            winbar = true -- hide winbar
        },
    }
