vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

local keys = require("action_key_mappings")
local cmds = require("action_cmd_mappings")

---------------------------------------------------------------------------
-- split
---------------------------------------------------------------------------

local key_split, cmd_split = keys.split, cmds.split
map("n", key_split.vsplit,   cmd_split.vsplit,   opt)
map("n", key_split.hsplit,   cmd_split.hsplit,   opt)
map("n", key_split.csplit,   cmd_split.csplit,   opt)
map("n", key_split.split_wh, cmd_split.split_wh, opt)
map("n", key_split.split_wl, cmd_split.split_wl, opt)
map("n", key_split.split_wj, cmd_split.split_wj, opt)
map("n", key_split.split_wk, cmd_split.split_wk, opt)


---------------------------------------------------------------------------
-- plugin keybindings
---------------------------------------------------------------------------

local pluginKeys = {}

------------------------------------
-- nvim-tree

local key_tree, cmd_tree = keys.nvim_tree, cmds.nvim_tree
map("n", key_tree.toggle, cmd_tree.toggle, opt)
pluginKeys.nvim_tree = {
    { key = key_tree.display_custom, action = cmd_tree.display_custom },
    { key = key_tree.display_hidden, action = cmd_tree.display_hidden },
    { key = key_tree.open,           action = cmd_tree.open },
    { key = key_tree.open_vsplit,    action = cmd_tree.open_vsplit },
    { key = key_tree.open_hsplit,    action = cmd_tree.open_hsplit },
    { key = key_tree.open_system,    action = cmd_tree.open_system },
    { key = key_tree.create,         action = cmd_tree.create },
    { key = key_tree.remove,         action = cmd_tree.remove },
    { key = key_tree.rename,         action = cmd_tree.rename },
    { key = key_tree.copy,           action = cmd_tree.copy },
    { key = key_tree.paste,          action = cmd_tree.paste },
    { key = key_tree.cut,            action = cmd_tree.cut },
}

------------------------------------
-- symbols-outline
local key_outline, cmd_outline = keys.symbols_outline, cmds.symbols_outline
map("n", key_outline.toggle, cmd_outline.toggle, opt)

------------------------------------
-- bufferline

local key_bufferline, cmd_bufferline = keys.bufferline, cmds.bufferline
map("n", key_bufferline.buffer_prev,  cmd_bufferline.buffer_prev,  opt)
map("n", key_bufferline.buffer_next,  cmd_bufferline.buffer_next,  opt)
map("n", key_bufferline.buffer_close, cmd_bufferline.buffer_close, opt)

------------------------------------
-- telescope

local key_telescope, cmd_telescope = keys.telescope, cmds.telescope
map("n", key_telescope.live_grep,  cmd_telescope.live_grep,  opt)
map("n", key_telescope.find_files, cmd_telescope.find_files, opt)
pluginKeys.telescope = {
    i = {
	-- common
        [key_telescope.move_prev]    = cmd_telescope.move_prev,
        [key_telescope.move_next]    = cmd_telescope.move_next,
        [key_telescope.scroll_up]    = cmd_telescope.scroll_up,
        [key_telescope.scroll_down]  = cmd_telescope.scroll_down,

        -- history                                               
        [key_telescope.history_prev] = cmd_telescope.history_prev,
        [key_telescope.history_next] = cmd_telescope.history_next,
    },
}

------------------------------------
-- lsp
local key_lsp, cmd_lsp = keys.lsp, cmds.lsp
pluginKeys.lsp = function(mapbuf)
    -- jump
    mapbuf("n", key_lsp.definition,  cmd_lsp.definition)
    mapbuf("n", key_lsp.references,  cmd_lsp.references)
    mapbuf("n", key_lsp.implements,  cmd_lsp.implements)

    -- buf
    mapbuf("n", key_lsp.rename,      cmd_lsp.rename)
    mapbuf("n", key_lsp.code_action, cmd_lsp.code_action)
    mapbuf("n", key_lsp.hover,       cmd_lsp.hover)
    mapbuf("n", key_lsp.format,      cmd_lsp.format)

    -- diagnostic
    mapbuf("n", key_lsp.open_flow,   cmd_lsp.open_flow)
    mapbuf("n", key_lsp.goto_prev,   cmd_lsp.goto_prev)
    mapbuf("n", key_lsp.goto_next,   cmd_lsp.goto_next)
end

------------------------------------
-- cmp
local key_cmp, cmd_cmp = keys.cmp, cmds.cmp
pluginKeys.cmp = function()
    return {
	[key_cmp.candidate_open]    = cmd_cmp.candidate_open,
	[key_cmp.candidate_close]   = cmd_cmp.candidate_close,
	[key_cmp.candidate_confirm] = cmd_cmp.candidate_confirm,
	[key_cmp.candidate_prev]    = cmd_cmp.candidate_prev,
	[key_cmp.candidate_next]    = cmd_cmp.candidate_next,
	[key_cmp.candidate_up]      = cmd_cmp.candidate_up,
	[key_cmp.candidate_down]    = cmd_cmp.candidate_down,
    }
end

return pluginKeys
