vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite  = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- Use spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<esc>', ':noh<CR>:echo ""<CR>', {noremap = true, silent = true})
vim.wo.number = true

-- Vim Window Navigation
vim.api.nvim_set_keymap('n', '<C-h>', ':TmuxNavigatorLeft<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':TmuxNavigatorDown<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':TmuxNavigatorUp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':TmuxNavigatorRight', { noremap = true, silent = true })
