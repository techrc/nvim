local cmp = require("cmp")

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },

    sources = cmp.config.sources({
        { name = "nvim_lsp" },
    }, {
	--{ name = "buffer" },
	{ name = "path" }
    }),

    mapping = require("key_cmd_bindings").cmp(),
})

-- / 查找模式使用 buffer 源
--cmp.setup.cmdline("/", {
--    mapping = cmp.mapping.preset.cmdline(),
--    sources = {
--        { name = "buffer" },
--    },
--})

-- : 命令行模式中使用 path 和 cmdline 源.
--cmp.setup.cmdline(":", {
--    mapping = cmp.mapping.preset.cmdline(),
--    sources = cmp.config.sources({
--        { name = "path" },
--    }, {
--        { name = "cmdline" },
--    }),
--})
