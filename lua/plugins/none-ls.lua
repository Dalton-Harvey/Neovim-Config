return
{
    {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.formatting.prettier,
                    null_ls.builtins.diagnostics.eslint_d,
                    null_ls.builtins.diagnostics.golangci,
                    null_ls.builtins.diagnostics.ruff,
                    null_ls.builtins.formatting.black,
                    null_ls.builtins.formatting.isort,
                    null_ls.builtins.formatting.csharpier,
                },
            })
        end
    }
}
