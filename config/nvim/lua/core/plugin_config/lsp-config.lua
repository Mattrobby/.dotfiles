-- GitHub: https://github.com/neovim/nvim-lspconfig
-- GitHub: https://github.com/williamboman/mason.nvim
-- GitHub: https://github.com/williamboman/mason-lspconfig.nvim

require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = {
    'astro',
    'bashls',
    'clangd',
    'cmake',
    'cssls',
    'docker_compose_language_service',
    'dockerls',
    'gopls',
    'html',
    'jdtls',
    'jqls',
    'jsonls',
    'lemminx',
    'ltex',
    'lua_ls',
    'marksman',
    'nil_ls',
    'perlnavigator',
    'pyright',
    'ruby_ls',
    'rust_analyzer',
    'sqlls',
    'tsserver',
    'vimls',
    'vuels',
    'yamlls'
  },
}

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'L', vim.lsp.buf.hover, {})
end

-- LSP Configuration
require('lspconfig').astro.setup{
  on_attach = on_attach
}
require('lspconfig').bashls.setup{
  on_attach = on_attach
}
require('lspconfig').clangd.setup{
  on_attach = on_attach
}
require('lspconfig').cmake.setup{
  on_attach = on_attach
}
require('lspconfig').cssls.setup{
  on_attach = on_attach
}
require('lspconfig').docker_compose_language_service.setup{
  on_attach = on_attach
}
require('lspconfig').dockerls.setup{
  on_attach = on_attach
}
require('lspconfig').gopls.setup{
  on_attach = on_attach
}
require('lspconfig').html.setup{
  on_attach = on_attach
}
require('lspconfig').jdtls.setup{
  on_attach = on_attach
}
require('lspconfig').jqls.setup{
  on_attach = on_attach
}
require('lspconfig').jsonls.setup{
  on_attach = on_attach
}
require('lspconfig').lemminx.setup{
  on_attach = on_attach
}
require('lspconfig').ltex.setup{
  on_attach = on_attach
}
require('lspconfig').lua_ls.setup{
  on_attach = on_attach
}
require('lspconfig').marksman.setup{
  on_attach = on_attach
}
require('lspconfig').nil_ls.setup{
  on_attach = on_attach
}
require('lspconfig').perlnavigator.setup{
  on_attach = on_attach
}
require('lspconfig').pyright.setup{
  on_attach = on_attach
}
require('lspconfig').ruby_ls.setup{
  on_attach = on_attach
}
require('lspconfig').rust_analyzer.setup{
  on_attach = on_attach
}
require('lspconfig').sqlls.setup{
  on_attach = on_attach
}
require('lspconfig').tsserver.setup{
  on_attach = on_attach
}
require('lspconfig').vimls.setup{
  on_attach = on_attach
}
require('lspconfig').vuels.setup{
  on_attach = on_attach
}
require('lspconfig').yamlls.setup{
  on_attach = on_attach
}

