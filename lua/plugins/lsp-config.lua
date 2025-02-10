return
{
        {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "clangd", "jdtls"}
        })
    end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({capabilities = capabilities})
            lspconfig.clangd.setup({capabilities = capabilities})
            lspconfig.jdtls.setup({capabilities = capabilities})
            --lspconfig.harper_ls.setup({capabilities = capabilities})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

            vim.fn.sign_define('DiagnosticSignError',{ text = '󰞇', texthl = 'DiagnosticSignError'})
            vim.fn.sign_define('DiagnosticSignWarn', { text = '󱢾', texthl = 'DiagnosticSignWarn' })
            vim.fn.sign_define('DiagnosticSignInfo', { text = '󰯂', texthl = 'DiagnosticSignInfo' })
            vim.fn.sign_define('DiagnosticSignHint', { text = '󱘆', texthl = 'DiagnosticSignHint' })

            vim.diagnostic.config({
                    virtual_text = {
                        prefix = '󰓥'
                    }
            })
        end
    }
}
