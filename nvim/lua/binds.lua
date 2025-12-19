-- leader key
vim.g.mapleader = " "


-- INSERT MODE
vim.api.nvim_set_keymap('i', '<C-;>', '<Esc>', { noremap = true }) -- normal mode by ctrl + space
vim.api.nvim_set_keymap('n', '<leader>a', ':wa<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true })

vim.api.nvim_set_keymap('i', '<C-Space>', '<Esc>', { noremap = true }) -- normal mode by ctrl + space
vim.keymap.set('i', '<C-u>', '<Left>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-j>', '<Down>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-k>', '<Up>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-l>', '<Right>', { noremap = true, silent = true })
-- NORMAL MOD

vim.api.nvim_set_keymap('n', '<CR>', 'i', { noremap = true })

-- FileActions
vim.api.nvim_set_keymap('n', '<F5>', ':FileActionsExecuteCode <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F8>', ':FileActionsExamineCode <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F6>', ':update<CR>:luafile %<CR>',{noremap = true })
vim.api.nvim_set_keymap('n', '<leader><F5>', ':FileActionsMakeRun <CR>i', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><F8>', ':FileActionsMakeRunValgrind <CR>i', { noremap = true })


--vim.api.nvim_set_keymap('n', '<F9>', ':w<CR>:!arduino-run-n-gun.sh %<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', '<leader>n', ':Neotree<CR>',{noremap = true })

-- Telescope.nvim
vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>Telescope<CR>', { noremap = true, silent = true })

vim.keymap.set('n', 'ff', require('telescope.builtin').find_files, { noremap=true, silent=true, desc = "Telescope Find Files" })
vim.keymap.set('n', '<leader>l', require('telescope.builtin').live_grep, { noremap=true, silent=true, desc = "Telescope Live Grep" })

vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<leader>R', ':set relativenumber!<CR>', { noremap = true, silent = true })

-- whitespace.nvim
vim.keymap.set('n', '<Leader>hs', require('whitespace-nvim').trim)
