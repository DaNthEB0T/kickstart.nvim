local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- local autocmd_group = augroup('Auto-formatters', { clear = true })
--
-- autocmd({ 'BufWritePre' }, {
--   pattern = { '*.c', '*.h' },
--   desc = 'Auto-format files on save using provided LSP',
--   callback = function()
--     vim.lsp.buf.format()
--   end,
--   group = autocmd_group,
-- })
--
-- autocmd({ 'BufWritePost' }, {
--   pattern = { '*.py' },
--   desc = 'Auto-format Python files on save',
--   callback = function()
--     local fileName = vim.api.nvim_buf_get_name(0)
--     vim.cmd(':silent !black --preview -q ' .. fileName)
--     vim.cmd(':silent !isort --profile black --float-to-top -q ' .. fileName)
--     vim.cmd(':silent !docformatter --in-place --black ' .. fileName)
--   end,
--   group = autocmd_group,
-- })

-- autocmd({ 'BufWritePost' }, {
--   pattern = { '*.c', '*.h' },
--   desc = 'Auto-format C source/header files on save',
--   callback = function()
--     vim.lsp.buf.format()
--     -- local filename = vim.api.nvim_buf_get_name(0)
--     -- vim.cmd(':silent !clang-format -i ' .. filename)
--   end,
--   group = autocmd_group,
-- })

local autoneotree_group = augroup('Neotree', {})
autocmd({ 'UiEnter' }, {
  desc = 'Automatically open Neotree on Vim Startup',
  callback = function()
    if vim.fn.argc() == 0 then
      vim.cmd 'Neotree toggle'
    end
  end,
  group = autoneotree_group,
})
