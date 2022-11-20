local status_lspconfig, lspconfig = pcall(require, "lspconfig")
if not status_lspconfig then
    vim.notify("lspconfig not found")
    return
end
local status_mason, mason = pcall(require, "mason")
if not status_mason then
    vim.notify("mason not found")
    return
end
local status_mason_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_mason_lspconfig then
    vim.notify("mason-lspconfig not found")
    return
end


mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})


local servers = {
    "sumneko_lua",
    --"bashls",
    --
    "pyright",
    --"gopls",
    "clangd",
    --"rust_analyzer",
    --"cmake",
    --"jdtls",
    --
    --"html",
    --"cssls",
    --"tsserver",
    --
    --"jsonls",
    --"yamlls",
    --
    --"dockerls",
    --
    --"remark_ls",
}


mason_lspconfig.setup({
    ensure_installed = servers
})


for _, name in pairs(servers) do
    local status, config = pcall(require, "lsp.config." .. name)
    if not status then
	vim.notify("lsp.config." .. name .. " not found")
    end

    if type(config) == "table" and config.on_setup then
        config.on_setup(lspconfig[name])
    else
        lspconfig[name].setup({})
    end
end
