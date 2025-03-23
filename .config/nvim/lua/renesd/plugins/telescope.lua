return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
        },
        config = function()
            pcall(require('telescope').load_extension, 'fzf')
            vim.keymap.set(
                'n', '<leader>/',
                function()
                    local dropdown = require('telescope.themes').get_dropdown({
                        winblend = 10,
                        previewer = false,
                    })
                    require('telescope.builtin').current_buffer_fuzzy_find(dropdown)
                end,
                { desc = '[/] Fuzzily search in current buffer' }
            )
            vim.keymap.set(
                'n', '<leader>gf',
                require('telescope.builtin').git_files,
                { desc = 'Search [G]it [F]iles' }
            )
            vim.keymap.set(
                'n', '<leader>sf',
                require('telescope.builtin').find_files,
                { desc = '[S]earch [F]iles' }
            )
            vim.keymap.set(
                'n', '<leader>sh',
                require('telescope.builtin').help_tags,
                { desc = '[S]earch [H]elp' }
            )
            vim.keymap.set(
                'n', '<leader>sw',
                require('telescope.builtin').grep_string,
                { desc = '[S]earch current [W]ord' }
            )
            vim.keymap.set(
                'n', '<leader>sg',
                require('telescope.builtin').live_grep,
                { desc = '[S]earch by [G]rep' }
            )
            vim.keymap.set(
                'n', '<leader>sd',
                require('telescope.builtin').diagnostics,
                { desc = '[S]earch [D]iagnostics' }
            )
            vim.keymap.set(
                'n', '<leader>sr',
                require('telescope.builtin').resume,
                { desc = '[S]earch [R]esume' }
            )
        end,
    },
}
