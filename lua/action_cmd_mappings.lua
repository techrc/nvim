local M = {}

M.split = {
    -- split
    vsplit = ":vsp<CR>",
    hsplit = ":sp<CR>",
    csplit = "<C-w>c",

    -- move
    split_wh = "<C-w>h",
    split_wl = "<C-w>l",
    split_wj = "<C-w>j",
    split_wk = "<C-w>k",
}

M.nvim_tree = {
    toggle         = ":NvimTreeToggle<CR>",
    display_custom = "toggle_custom",
    display_hidden = "toggle_dotfiles",
    open           = "edit",
    open_vsplit    = "vsplit",
    open_hsplit    = "split",
    open_system    = "system_open",
    create         = "create",
    remove         = "remove",
    rename         = "rename",
    copy           = "copy",
    paste          = "paste",
    cut            = "cut",
}

M.symbols_outline = {
    toggle = ":SymbolsOutline<CR>"
}

M.bufferline = {
    buffer_prev    = ":BufferLineCyclePrev<CR>",
    buffer_next    = ":BufferLineCycleNext<CR>",
    buffer_close   = ":Bdelete!<CR>",
}

M.telescope = {
    -- global
    live_grep    = ":Telescope live_grep<CR>",
    find_files   = ":Telescope find_files<CR>",

    --common
    move_prev    = "move_selection_previous",
    move_next    = "move_selection_next",
    scroll_up    = "preview_scrolling_up",
    scroll_down  = "preview_scrolling_down",

    -- history
    history_prev = "cycle_history_prev",
    history_next = "cycle_history_next",
}

M.lsp = {
    -- jump
    definition  = "<cmd>Lspsaga preview_definition<CR>",
    references  = "<cmd>Lspsaga lsp_finder<CR>",
    implements  = "<cmd>lua vim.lsp.buf.implementation()<CR>",

    -- diagnostic
    open_flow   = "<cmd>Lspsaga show_line_diagnostics<CR>",
    goto_prev   = "<cmd>Lspsaga diagnostic_jump_prev<CR>",
    goto_next   = "<cmd>Lspsaga diagnostic_jump_next<CR>",

    -- buf
    rename      = "<cmd>Lspsaga rename<CR>",
    code_action = "<cmd>Lspsaga code_action<CR>",
    hover       = "<cmd>Lspsaga hover_doc<CR>",
    format      = "<cmd>lua vim.lsp.buf.format({ async = true })<CR>",

}


-- cmp
local cmp = require("cmp")
M.cmp = {
    candidate_open    = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
    candidate_close   = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close() }),
    candidate_confirm = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }),
    candidate_prev    = cmp.mapping.select_prev_item(),
    candidate_next    = cmp.mapping.select_next_item(),
    candidate_up      = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
    candidate_down    = cmp.mapping(cmp.mapping.scroll_docs( 4), {"i", "c"}),
}

return M
