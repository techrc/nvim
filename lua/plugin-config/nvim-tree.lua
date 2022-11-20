local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("nvim-tree not found")
    return
end


nvim_tree.setup({
    git = {
        enable = true,
    },
    filters = {
        dotfiles = true,
        --custom = { 'node_modules' },
    },
    view = {
        width = 40,
        side = 'left',
        hide_root_folder = false,
        mappings = {
            custom_only = false,
            list = require('key_cmd_bindings').nvim_tree
        },
        number = false,
        relativenumber = false,
        signcolumn = 'yes',
    },
    actions = {
        open_file = {
            resize_window = true,
            quit_on_open = false,
        },
    },
    system_open = {
        cmd = 'open',
    },
    -- project plugin
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
})


vim.cmd([[
    autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])
