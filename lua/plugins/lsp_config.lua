local lsp_attach = require("zoro.lsp.attach")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
return
{
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("neodev").setup({})
      -- require 'lspconfig'.jdtls.setup ({})
     require('lspconfig').lua_ls.setup({
        on_attach = lsp_attach,
        settings = {
          Lua = {
            telemetry = { enable = false },
            workspace = { checkThirdParty = false },
          }
        }
      })
      require 'lspconfig'.html.setup({
        on_attach = lsp_attach,
      })
      require 'lspconfig'.jsonls.setup({
        capabilities = capabilities,
        on_attach = lsp_attach,
      })
      require 'lspconfig'.markdown_oxide.setup({

      })
    require'lspconfig'.jdtls.setup{
	on_attach=lsp_attach
    }
    end,
  },
  {
    "williamboman/mason.nvim",
    lazy = true,
    "folke/neodev.nvim",
    lazy = true,
  },
}
