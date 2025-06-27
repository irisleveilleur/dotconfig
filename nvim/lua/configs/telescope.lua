local builtin = require('telescope.builtin')

require('telescope').setup{
    defaults = {},
    pickers = {
        find_files = {
            theme = "dropdown",
            previewer = false
        },
    }
}

require('telescope').load_extension('fzf')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
