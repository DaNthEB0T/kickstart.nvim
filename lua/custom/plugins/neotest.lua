return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',

    'nvim-neotest/neotest-python',
  },
  config = function()
    local map = vim.keymap.set

    require('neotest').setup {
      adapters = {
        require 'neotest-python',
      },
    }

    vim.cmd [[
    command! NeotestSummaryOpen lua require("neotest").summary.open()
    command! NeotestSummaryClose lua require("neotest").summary.close()
    command! NeotestFile lua require("neotest").run.run(vim.fn.expand("%"))
    command! Neotest lua require("neotest").run.run({suite = true})
    command! NeotestNearest lua require("neotest").run.run()
    command! NeotestDebug lua require("neotest").run.run({suite = true,  strategy = "dap"})
    command! NeotestAttach lua require("neotest").run.attach()
    command! NeotestStop lua require("neotest").run.stop({suite = true})
    command! NeotestResults lua require("neotest").output_panel.toggle()
]]

    map('n', '<leader>Ts', ':Neotest<CR>:NeotestSummaryOpen<CR>', { desc = 'Run [T]est [S]uite' })
    map('n', '<leader>Tf', ':NeotestFile<CR>', { desc = '[T]est [F]ile' })
    map('n', '<leader>TS', ':NeotestStop<CR>', { desc = '[T]ests [S]top' })
    map('n', '<leader>To', ':NeotestSummaryOpen<CR>', { desc = '[T]est Summary [O]pen' })
    map('n', '<leader>Tc', ':NeotestSummaryClose<CR>', { desc = '[T]est Summary [C]lose' })
    map('n', '<leader>Tr', ':NeotestResults<CR>', { desc = '[T]ests [R]results' })
  end,
}
