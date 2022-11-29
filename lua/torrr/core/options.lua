local opt = vim.opt -- for conciseness


opt.fileencoding = 'utf-8'
-- line numbers
opt.relativenumber = true
opt.number = true
-- tabs & indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smarttab = true
-- line wrapping
opt.wrap = false
-- search settings
opt.ignorecase = true
opt.smartcase = true
-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
-- backspace
opt.backspace = "indent,eol,start"
-- clipboard
opt.clipboard:append("unnamedplus")
-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
-- mouse
opt.mouse = "a"

opt.ttyfast = true
