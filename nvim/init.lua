-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- add your plugins here
--      'morhetz/gruvbox',
--      'nvie/vim-flake8',
      {
          'scrooloose/nerdtree',
          lazy = true,
      },
           {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
      'jiangmiao/auto-pairs',
      'BenGH28/neo-runner.nvim',
      { "folke/neodev.nvim", opts = {} },
--      'ycm-core/YouCompleteMe',
      'numToStr/Comment.nvim',
--      'feline-nvim/feline.nvim',
      'neovim/nvim-lspconfig',
      'ivanesmantovich/xkbswitch.nvim',
          --'ms-jpq/coq_nvim',
      {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
      },
      {'m1sh4k/file-actions-nvim', config=true},
      {
          "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
      },
      { 'echasnovski/mini.completion', version = false },
      --"ms-jpq/coq.artifacts"
  --    
  {"hrsh7th/nvim-cmp",
    dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		  },
  }
},

  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "gruvbox" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})


require('settings')
require('binds')
