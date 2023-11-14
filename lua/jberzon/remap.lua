-- Remap leader key to space
vim.g.mapleader = " "

-- leader pv to open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- J and K in visual mode to move highlighted lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append trailing line to current line
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in middle when going up and down half pages w/ ctrl d/u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in middle when "n"exting through searches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste w/o overwriting paste with recently deleted
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Don't think this currently works, but should open new tmux session
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- replace words in file at cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- chmod +x current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Telescope remaps
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, {})
vim.keymap.set('n', '<C-p>', require('telescope.builtin').git_files, {})
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })

-- Undootree remaps
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Harpoon remaps
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

-- Fugitive remaps
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
