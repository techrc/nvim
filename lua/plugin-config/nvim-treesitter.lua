local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("没有找到 nvim-treesitter")
    return
end


treesitter.setup({
    ensure_installed = { "lua", "python" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
