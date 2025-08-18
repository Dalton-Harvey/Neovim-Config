return
{
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { "lua_ls", "ts_ls", "clangd","ruff","pyright", "gopls", "csharp_ls",}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({
                capabilities  = capabilities
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities
            })
            lspconfig.clangd.setup({
                capabilities = capabilities
            })
            lspconfig.ruff.setup({
                capabilities = capabilities
            })
            lspconfig.pyright.setup({
                capabilities = capabilities
            })
            lspconfig.gopls.setup({
                capabilities = capabilities
            })
            lspconfig.csharp_ls.setup({
                capabilities = capabilities
            })
            lspconfig.gdscript.setup({
                capabilities = capabilities
            })

        end

    }
}
