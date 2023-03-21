local builtin = require('telescope.builtin')
vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader><Space>', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fg', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
