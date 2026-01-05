-- defines
local cmd = vim.cmd
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

-- nu tipo
opt.cursorline = true     -- Подсветка строки с курсором
opt.number = true         -- Включаем нумерацию строк
opt.relativenumber = true -- относительная нумерация
opt.undofile = true       -- Возможность отката назад
opt.splitright = true     -- vertical split вправо
opt.splitbelow = true     -- horizontal split вниз
--opt.noexpandtab = true
-- krasota
opt.termguicolors = true      --  24-bit RGB colors

-- tabs and idents
cmd([[
filetype indent plugin on
syntax enable
]])
opt.expandtab = false      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new linestt
opt.softtabstop=4

require('lualine').setup({})
vim.cmd[[colorscheme catppuccin-mocha]]


--vim.opt.spell = true
--vim.opt.spelllang = {'ru', 'en'}


local builtin = require('telescope.builtin')


require("neodev").setup({})
vim.diagnostic.config({
  virtual_text = {severity = { min = vim.diagnostic.severity.HINT }},  -- show diagnostics inline
  signs = true,         -- show signs in the sign column
  update_in_insert = false,
  underline = true,
  severity_sort = true,


})

require('whitespace-nvim').setup({
            -- configuration options and their defaults

            -- `highlight` configures which highlight is used to display
            -- trailing whitespace
            highlight = 'DiffDelete',

            -- `ignored_filetypes` configures which filetypes to ignore when
            -- displaying trailing whitespace
            ignored_filetypes = { 'TelescopePrompt', 'Trouble', 'help', 'dashboard' },

            -- `ignore_terminal` configures whether to ignore terminal buffers
            ignore_terminal = true,

            -- `return_cursor` configures if cursor should return to previous
            -- position after trimming whitespace
            return_cursor = true,
})

        -- remove trailing whitespace with a keybinding

require('modules.ts')
