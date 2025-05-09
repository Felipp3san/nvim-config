-- ~/.config/nvim/init.lua

local opt = vim.opt

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Basic settings
opt.number = true             -- Show line numbers
opt.relativenumber = true    -- Show relative line numbers (e.g., 1, 2, 3 above/below cursor)
opt.mouse = "a"              -- Enable mouse support
opt.clipboard = "unnamedplus"-- Use system clipboard for copy/paste
opt.expandtab = false         -- Use tabs instead of spaces
opt.tabstop = 4              -- Number of spaces a tab represents
opt.shiftwidth = 4           -- Size of an indent
opt.softtabstop = 4          -- How many spaces a tab insert
opt.termguicolors = true     -- Enable true color support
opt.list = true              -- Shows invisible characters like tabs, spaces,line breaks etc...

opt.autoindent = true        -- Copy the indentation from previous line
-- vim.opt.smartindent = true       -- (use with autoindent) adds basics C rules to autoindent
opt.cindent = true             --(dont use with smartindent) more advanced C sysntax indentation, smarter than smartindent. parses more deeply.

opt.listchars = {
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
