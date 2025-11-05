-- leader key
vim.g.mapleader = " "

-- INSERT MODE
vim.api.nvim_set_keymap('i', '<C-Space>', '<Esc>', { noremap = true }) -- normal mode by ctrl + space

vim.keymap.set('i', '<C-u>', '<Left>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-j>', '<Down>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-k>', '<Up>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-l>', '<Right>', { noremap = true, silent = true })
-- NORMAL MOD

vim.api.nvim_set_keymap('n', '<CR>', 'i', { noremap = true })
--vim.api.nvim_set_keymap('n', '<F5>', ':update<CR>:NeoRunner<CR>i',{noremap = true })
vim.api.nvim_set_keymap('n', '<F5>', ':FileActionsExecuteCode <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F8>', ':FileActionsExamineCode <CR>', { noremap = true })
--vim.api.nvim_set_keymap('n', '<F5>', ':update<CR>:!python3 %<CR>',{noremap = true })
vim.api.nvim_set_keymap('n', '<F6>', ':update<CR>:luafile %<CR>',{noremap = true })
--vim.api.nvim_set_keymap('n', '<F9>', ':w<CR>:!arduino-run-n-gun.sh %<CR>', {noremap = true})


-- Telescope.nvim
vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>Telescope<CR>', { noremap = true, silent = true })

vim.keymap.set('n', 'ff', require('telescope.builtin').find_files, { noremap=true, silent=true, desc = "Telescope Find Files" })
vim.keymap.set('n', 'lg', require('telescope.builtin').live_grep, { noremap=true, silent=true, desc = "Telescope Live Grep" })
