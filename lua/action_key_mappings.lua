local M = {}

M.split = {
    -- split
    vsplit   = "sv",
    hsplit   = "sh",
    csplit   = "sc",

    -- move
    split_wh = "<A-h>",
    split_wl = "<A-l>",
    split_wj = "<A-j>",
    split_wk = "<A-k>",
}

M.nvim_tree = {
    toggle         = "<A-m>",
    display_custom = "i",
    display_hidden = ".",
    open           = { "o", "<CR>" },
    open_vsplit    = "v",
    open_hsplit    = "h",
    open_system    = "s",
    create         = "a",
    remove         = "d",
    rename         = "r",
    copy           = "c",
    paste          = "p",
    cut            = "x",
}

M.symbols_outline = {
    toggle = "<A-o>"
}

M.bufferline = {
    buffer_prev    = "<C-h>",
    buffer_next    = "<C-l>",
    buffer_close   = "<C-w>",
}


M.telescope = {
    -- global
    live_grep    = "<C-f>",
    find_files   = "<C-p>",

    -- common
    move_prev    = "<C-k>",
    move_next    = "<C-j>",
    scroll_up    = "<C-u>",
    scroll_down  = "<C-d>",

    -- history
    history_prev = "<C-b>",
    history_next = "<C-f>",
}


M.lsp = {
    -- jump
    definition    = "gd",
    references    = "gr",
    implements    = "gi",

    -- buf
    rename        = "<leader>rn",
    code_action   = "<leader>ca",
    format        = "<leader>f",
    hover         = "gh",

    -- diagnostic
    open_flow     = "gp",
    goto_prev     = "gk",
    goto_next     = "gj",
}


M.cmp = {
    candidate_open    = "<C-.>",
    candidate_close   = "<C-,>",
    candidate_confirm = "<CR>",
    candidate_prev    = "<C-k>",
    candidate_next    = "<C-j>",
    candidate_up      = "<C-u>",
    candidate_down    = "<C-d>",
}


return M
