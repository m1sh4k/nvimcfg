vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = "ninja",
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.expandtab = true
  end,
})

-- Associate .ninja files
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "build.ninja",
  callback = function()
    vim.bo.filetype = "ninja"
  end,
})

