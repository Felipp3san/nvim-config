-- ~/.config/nvim/lua/config/options.lua
local opt = vim.opt
local g = vim.g

-- 42 Header credentials
g.user = "fde-alme"
g.mail = "fde-alme@student.42porto.com"

-- Basic settings
opt.autowrite = true			-- Enable auto write
opt.cursorline = true			-- Enable highlighting of the current line
opt.linebreak = true			-- Wrap lines at convenient points like spaces
opt.wrap = false				-- Disable line wrap
opt.signcolumn = "yes"			-- Always show the signcolumn (breakpoints column), otherwise it would shift the text each time
opt.number = true				-- Show line numbers
opt.relativenumber = true		-- Show relative line numbers (e.g., 1, 2, 3 above/below cursor)
opt.mouse = "a"					-- Enable mouse support
opt.clipboard = "unnamedplus"	-- Use system clipboard for copy/paste
opt.expandtab = false			-- Use tabs instead of spaces
opt.tabstop = 4					-- Number of spaces a tab represents
opt.shiftwidth = 4				-- Size of an indent
opt.softtabstop = 4				-- How many spaces a tab insert
opt.shiftround = true			-- Round indent
opt.ruler = false				-- Disable the default ruler
opt.showmode = false			-- Dont show mode since we have a statusline
opt.termguicolors = true		-- Enable true color support
opt.list = true					-- Shows invisible characters like tabs, spaces,line breaks etc...
opt.smartindent = true			-- (use with autoindent) Insert indents automatically

opt.listchars = {
	tab = '➡ ',
	space = '·',
}
