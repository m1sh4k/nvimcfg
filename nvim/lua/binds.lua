-- INSERT MODE
vim.api.nvim_set_keymap('i', '<C-Space>', '<Esc>', { noremap = true }) -- normal mode by ctrl + space

vim.api.nvim_set_keymap('i', '<C-q>', '<ESC>', { noremap = true })

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
