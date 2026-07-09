vim.pack.add({ 'http://github.com/nvim-lualine/lualine.nvim' })

require('lualine').setup({
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '|',
        section_separators = '',
    },
})
