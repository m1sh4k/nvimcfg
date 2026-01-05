local ts_langs = { 'python', 'c', 'cpp', 'css', 'lua', 'markdown', 'typst' }


require'nvim-treesitter'.install(ts_langs)

vim.api.nvim_create_autocmd('FileType', {
  pattern = ts_langs,
  callback = function() vim.treesitter.start() end,
})


vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
