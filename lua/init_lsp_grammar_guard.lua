-- hook to nvim-lspconfig
require("grammar-guard").init()

-- setup LSP config
require("lspconfig").grammar_guard.setup({
    cmd = {'/usr/local/share/ltex-ls/bin/ltex-ls'}, -- add this if you install ltex-ls yourself
    filetypes = {"tex", "bib", "markdown", "rust"},
    settings = {
        ltex = {
            enabled = {"latex", "tex", "bib", "markdown"},
            language = "en",
            diagnosticSeverity = "information",
            setenceCacheSize = 2000,
            additionalRules = {enablePickyRules = true, motherTongue = "en"},
            trace = {server = "verbose"},
            dictionary = {},
            disabledRules = {},
            hiddenFalsePositives = {}
        }
    }
})
