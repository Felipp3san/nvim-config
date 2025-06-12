-- ~/.config/nvim/lua/config/keybinds.lua
local keymap = vim.keymap
local g = vim.g

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
g.mapleader = " "
g.maplocalleader = "\\"

-- In the first argument from set function, 'n' stands for Normal mode and 'v' to Visual mode
-- Disable the spacebar key's default behavior in Normal and Visual modes
keymap.set({ "n", "v" }, '<Space>', '<Nop>', { silent = true })

-- Open the file explorer
keymap.set("n", "<leader>cd", vim.cmd.Ex, { desc = "Open file explorer" })

-- Open Lazy plugin manager 
keymap.set("n", "<leader>l", "<CMD>Lazy<CR>", { desc = "Open Lazy.vim" })

-- New file
-- keymap.set("n", "<leader>nf", "<CMD>enew<cr>", { desc = "New File" })

-- Clear search, diff update and redraw
keymap.set("n", "<leader>ur",
  "<CMD>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / Clear hlsearch / Diff Update" }
)

-- Save file
keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<CMD>w<CR><ESC>", { desc = "Save File" })

-- Noice
keymap.set("n", "<leader>nh", "<CMD>NoiceHistory<CR>", { desc = "Noice History" })
keymap.set("n", "<leader>nl", "<CMD>NoiceLast<CR>", { desc = "Noice Last Message" })
keymap.set("n", "<leader>nd", "<CMD>NoiceDismiss<CR>", { desc = "Noice Dismiss All" })

-- Buffers
keymap.set("n", "<S-l>", "<CMD>bnext<CR>", { desc = "Next Buffer" })
keymap.set('n', '<Tab>', '<CMD>bnext<CR>', { desc = "Next Buffer" })
keymap.set("n", "<S-h>", "<CMD>bprevious<CR>", { desc = "Previous Buffer" })
keymap.set('n', '<S-Tab>', '<CMD>bprevious<CR>', { desc = "Previous Buffer"})
-- keymap.set('n', '<leader>x', '<CMD>bd<CR>', { desc = "Close Buffer" })
keymap.set('n', '<leader>b', '<CMD>enew<CR>', { desc = "New Buffer" })

-- Error/Warnings
keymap.set("n", "<leader>w", "<CMD>lua vim.diagnostic.open_float()<CR>", { desc = "Open error/warning popup" })
