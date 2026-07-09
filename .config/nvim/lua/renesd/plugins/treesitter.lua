vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })

require('nvim-treesitter.config').setup({
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
