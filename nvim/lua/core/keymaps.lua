-- Sets Keymap Character 
vim.g.mapleader = ' '
vim.g.maplocalleader = ' ' 

-- Basic Config 
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true 
vim.opt.cursorline = true
vim.opt.autoread = true

-- Sets Tab to 2 Spaces
vim.cmd('set tabstop=2')
vim.cmd('set shiftwidth=2')
vim.cmd('set expandtab')


vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
