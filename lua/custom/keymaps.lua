local map = vim.keymap.set

-- Reisze window using <ctrl> arrow keys
map('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Increase Window Height' })
map('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease Window Height' })
map('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' })
map('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' })

map('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move Line Down' })
map('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move Line Up' })
map('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move Selection Down' })
map('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move Selection Up' })

map('n', '<leader>tn', ':Neotree toggle<cr>', { desc = '[T]oggle [N]eotree' })
