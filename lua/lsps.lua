--[[vim.lsp.config['rust_analyzer'] = {
	settings = {
		['rust-analyzer'] = {},
	},
}
vim.lsp.enable('rust-analyzer')
]]

vim.lsp.config.rust_analyzer = {
    --on_attach = on_attach,
    --capabilities = capabilities,
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_markers = {"Cargo.toml", ".git"},
    single_file_support = true,
    settings = {
        ['rust-analyzer'] = {
            diagnostics = {
                enable = true;
            }
        }
    },
    before_init = function(init_params, config)
        -- See https://github.com/rust-lang/rust-analyzer/blob/eb5da56d839ae0a9e9f50774fa3eb78eb0964550/docs/dev/lsp-extensions.md?plain=1#L26
        if config.settings and config.settings['rust-analyzer'] then
            init_params.initializationOptions = config.settings['rust-analyzer']
        end
    end,
}
vim.lsp.enable("rust_analyzer")





vim.lsp.config['lua_ls'] = {
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {
					'vim',
					'require'
				},
			},
			completion = {
				callSnippet = "Replace"
			}
		}
	}
}
vim.lsp.enable('lua_ls')

vim.lsp.config['pyright'] = {
	settings = {
		['pyright'] = {},
	},
}
vim.lsp.enable('pyright')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.positionEncoding = { "utf-8", "utf-16" }

vim.lsp.config['clangd'] = {
	cmd = {
		"clangd",
		"--clang-tidy",
		"--background-index",
		"-j=6",
		"--function-arg-placeholders=0",
		--  "-all-scopes-completion",
		"--completion-style=detailed",
		"--header-insertion=iwyu",
		"--fallback-style={IndentWidth: 4, TabWidth: 4}",
		"--header-insertion=never"
	},
	capabilities=capabilities,
	init_options = {
		clangdFileStatus = true,
		usePlaceholders = true,
		completeUnimported = true,
		fallbackFlags = {         -- compile flags if no compile_commands.json
			"-Wunused-variable",
			"-Wall",               -- enable extra warnings
			"-Wextra",
			"-Wpedantic",
			"-Wconversion",
			"-lreadline"
			--      "-Werror"
		},
	},
}
vim.lsp.enable('clangd')

vim.lsp.config['tinymist'] = {}
vim.lsp.enable('tinymist')

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

cmp.setup {
	sources = {
		{ name = 'nvim_lsp' }
	}
}

vim.diagnostic.config({
  virtual_text = {
    update_in_insert = false,  -- ← ГЛАВНАЯ НАСТРОЙКА
  },
})

