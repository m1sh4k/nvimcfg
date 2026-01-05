local ts_langs = { 'python', 'c', 'cpp', 'css', 'lua', 'markdown', 'typst' }

local ts = require('nvim-treesitter').install(ts_langs)


vim.api.nvim_create_autocmd('FileType', {
  pattern = ts_langs,
  callback = function()
    vim.treesitter.start()
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
