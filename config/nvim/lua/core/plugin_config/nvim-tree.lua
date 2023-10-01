-- GitHub: https://github.com/nvim-tree/nvim-tree.lua
-- GitHub: https://github.com/nvim-tree/nvim-web-devicons
require("nvim-tree").setup({})

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

