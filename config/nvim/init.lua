require('core.keymaps')
require('core.plugins')
require('core.plugin_config')

-- Enable clipboard support
vim.opt.clipboard = 'unnamedplus'
vim.cmd([[
  augroup YankToClipboard
    autocmd!
    autocmd TextYankPost * if v:event.operator == 'y' | call system('echo ' .. v:event.regname .. ' | xclip -selection clipboard', v:event.regcontents) | endif
  augroup END
]])
