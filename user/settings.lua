local g = vim.g
local o = vim.o

-- Other settings ====================
o.termguicolors = true
o.nocompatible = true
o.noswapfile = true
o.encoding = 'UTF-8'
o.fileencodings = 'utf-8'
o.hlsearch = true
o.incsearch = true
o.wrap = true

-- Tabs settings
o.expandtab = true
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = -1 -- If negative, shiftwidth value is used

-- Python tabs settings
vim.api.nvim_create_autocmd("FileType", {
	pattern = "py",
	callback = function()
        o.tabstop = 4
        o.shiftwidth = 4
	end
})

o.listchars = 'eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣'
o.list = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- Preserve view while jumping
o.jumpoptions = 'view'

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Stable buffer content on window open/close events.
o.splitkeep = 'screen'

-- Better editor UI
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = 'yes:2'
o.cursorline = true

-- TextEdit might fail if hidden is not set.
o.hidden = true

-- Give more space for displaying messages.
o.cmdheight = 2

-- Mouse
o.mouse = 'a'

-- delays and poor user experience.
o.updatetime = 300
o.timeoutlen = 500

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '
