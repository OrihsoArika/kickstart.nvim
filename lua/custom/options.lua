local vim = vim
local o = vim.o

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.numberwidth = 3
o.scrolloff = 8
o.updatetime = 300

o.syntax = on

o.termguicolors = true
o.expandtab = true
o.smartindent = true
o.incsearch = true
o.splitbelow = true
o.splitright = true
o.hidden = true
o.undofile = true
o.ignorecase = true
o.smartcase = true
o.number = true
o.relativenumber = true
o.showmode = false
o.backup = false
o.writebackup = false
o.cul = true
o.culopt = 'both'
o.wrap = false

-- o.background='dark'
o.mouse = ''
o.signcolumn = 'yes'
o.clipboard = 'unnamedplus'
o.background = 'light'

-- vim.g.sonokai_style='atlantis'

vim.cmd [[colorscheme rose-pine]]
