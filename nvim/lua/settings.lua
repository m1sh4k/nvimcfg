-- defines
local cmd = vim.cmd
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scpped options

-- nu tipo
opt.cursorline = true     -- Подсветка строки с курсором
opt.number = true         -- Включаем нумерацию строк
opt.undofile = true       -- Возможность отката назад
opt.splitright = true     -- vertical split вправо
opt.splitbelow = true     -- horizontal split вниз

-- krasota
opt.termguicolors = true      --  24-bit RGB colors

-- tabs and idents
cmd([[
filetype indent plugin on
syntax enable
]])
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines


require('lualine').setup() 
vim.cmd[[colorscheme tokyonight]]
--cmd'colorscheme gruvbox'

--local coq = require "coq"
local lspconfig = require('lspconfig')

lspconfig.pyright.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['pyright'] = {},
  },
}

lspconfig.clangd.setup {
    settings = {
        ['clangd'] = {},
    },
}                                                               

--lspconfig.clangd.setup(coq.lsp_ensure_capabilities())
--lspconfig.pyright.setup(coq.lsp_ensure_capabilities())

--vim.cmd('COQnow -s')
--
local cmp = require("cmp")
	vim.opt.completeopt = { "menu", "menuone", "noselect" }

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
			end,
		},
		window = {
			-- completion = cmp.config.window.bordered(),
			-- documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		}),
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			{ name = "luasnip" }, -- For luasnip users.
			-- { name = "orgmode" },
		}, {
			{ name = "buffer" },
			{ name = "path" },
		}),
	})

	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})

require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- An example for configuring `clangd` LSP to use nvim-cmp as a completion engine
require('lspconfig').clangd.setup {
  capabilities = capabilities,
}

require('lspconfig').pyright.setup {
    capabilities = capabilities,
}
