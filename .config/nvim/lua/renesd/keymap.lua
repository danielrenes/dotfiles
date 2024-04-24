vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

vim.keymap.set('n', '<leader>do', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>d[', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>d]', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>dd', function() vim.cmd('Telescope diagnostics') end)

vim.keymap.set('n', '<C-t>', function() vim.cmd('tabnew') end)
vim.keymap.set('n', '<C-Left>', function() vim.cmd('tabprevious') end)
vim.keymap.set('n', '<C-Right>', function() vim.cmd('tabnext') end)

vim.keymap.set('n', '<A-Up>', function() vim.cmd('resize -2') end)
vim.keymap.set('n', '<A-Down>', function() vim.cmd('resize +2') end)
vim.keymap.set('n', '<A-Left>', function() vim.cmd('vertical resize -2') end)
vim.keymap.set('n', '<A-Right>', function() vim.cmd('vertical resize +2') end)
