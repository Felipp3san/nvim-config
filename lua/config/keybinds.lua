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
keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Open Lazy.vim" })

-- Noice keymaps
keymap.set("n", "<leader>nh", ":NoiceHistory<CR>", { desc = "Noice History" })
keymap.set("n", "<leader>nl", ":NoiceLast<CR>", { desc = "Noice Last Message" })
keymap.set("n", "<leader>nd", ":NoiceDismiss<CR>", { desc = "Noice Dismiss All" })
