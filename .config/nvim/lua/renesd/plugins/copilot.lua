vim.pack.add({ 'https://github.com/github/copilot.vim' })

vim.keymap.set('n', '<leader>ce', function() vim.cmd('Copilot enable') end)
vim.keymap.set('n', '<leader>cd', function() vim.cmd('Copilot disable') end)
