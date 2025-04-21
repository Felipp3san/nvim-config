-- ~/.config/nvim/init.lua

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Basic settings
vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true    -- Show relative line numbers (e.g., 1, 2, 3 above/below cursor) vim.opt.mouse = "a"              -- Enable mouse support
vim.opt.clipboard = "unnamedplus"-- Use system clipboard for copy/paste
vim.opt.expandtab = false         -- Convert tabs to spaces
vim.opt.shiftwidth = 4           -- Indent size when autoindenting
vim.opt.tabstop = 4              -- Number of spaces per tab
vim.opt.termguicolors = true     -- Enable true color support
vim.opt.list = true
vim.opt.listchars = {
  tab = '➡ ',
  space = '·',
}

-- 42 Header credentials
vim.g.user = "fde-alme"
vim.g.mail = "fde-alme@student.42porto.com"

-- Install plugin manager (lazy.nvim)
require("config.lazy")

-- Set colorscheme
--vim.cmd.colorscheme("tokyonight")
