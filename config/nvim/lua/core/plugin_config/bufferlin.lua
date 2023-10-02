-- GitHub: https://github.com/akinsho/bufferline.nvim
local bufferline = require("bufferline")
bufferline.setup{
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true
      }
    },
  }
}


vim.api.nvim_set_keymap('n', '<tab>', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>x', ':bd<CR>', {noremap = true, silent = true})
