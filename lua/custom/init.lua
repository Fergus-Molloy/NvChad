require "custom.options"
-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})
-- enable cursor line
-- when it starts working check https://nvchad.com or
-- see: https://nvchad.github.io/config/Custom%20config#override-default-highlights
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    vim.cmd [[ :highlight CursorLine guibg=#282a2e ]]
  end,
})
--vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format({async=true})]]
