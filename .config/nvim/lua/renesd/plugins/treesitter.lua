return {
    {
        'nvim-treesitter/nvim-treesitter',
        version = "v0.9.x",
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = {
                    'bash',
                    'c',
                    'cpp',
                    'css',
                    'dart',
                    'dockerfile',
                    'go',
                    'html',
                    'java',
                    'javascript',
                    'json',
                    'kotlin',
                    'lua',
                    'make',
                    'markdown_inline',
                    'python',
                    'rust',
                    'sql',
                    'typescript',
                    'vimdoc',
                    'xml',
                    'yaml',
                },
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            })
        end,
    },
}
