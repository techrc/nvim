local status, symbols_outline = pcall(require, "symbols-outline")
if not status then
    vim.notify("symbols-outline not found")
    return
end

symbols_outline.setup({
  opts = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false,
    relative_width = true,
    width = 20,
    auto_close = false,
    show_numbers = false,
    show_relative_numbers = false,
    show_symbol_details = true,
    preview_bg_highlight = 'Pmenu',
    autofold_depth = nil,
    auto_unfold_hover = true,
    fold_markers = { '', '' },
    wrap = false,
    keymaps = {
        close          = "q",
        goto_location  = "<CR>",
        focus_location = "f",
        hover_symbol   = "<C-space>",
        toggle_preview = "K",
        rename_symbol  = "r",
        code_actions   = "a",
        fold           = "o",
        unfold         = "o",
        fold_all       = "O",
        unfold_all     = "O",
        fold_reset     = "R",
    },
    symbols = {
      File          = {icon = "", hl    = "TSURI"},
      Module        = {icon = "", hl    = "TSNamespace"},
      Namespace     = {icon = "", hl    = "TSNamespace"},
      Package       = {icon = "", hl    = "TSNamespace"},
      Class         = {icon = "C", hl    = "TSType"},
      Method        = {icon = "ƒ", hl    = "TSMethod"},
      Property      = {icon = "", hl    = "TSMethod"},
      Field         = {icon = "", hl    = "TSField"},
      Constructor   = {icon = "", hl    = "TSConstructor"},
      Enum          = {icon = "ℰ", hl    = "TSType"},
      Interface     = {icon = "ﰮ", hl    = "TSType"},
      Function      = {icon = "", hl    = "TSFunction"},
      Variable      = {icon = "", hl    = "TSConstant"},
      Constant      = {icon = "", hl    = "TSConstant"},
      String        = {icon = "ş", hl    = "TSString"},
      Number        = {icon = "#", hl    = "TSNumber"},
      Boolean       = {icon = "⊨", hl    = "TSBoolean"},
      Array         = {icon = "", hl    = "TSConstant"},
      Object        = {icon = "⦿", hl    = "TSType"},
      Key           = {icon = "", hl   = "TSType"},
      Null          = {icon = "NULL", hl = "TSType"},
      EnumMember    = {icon = "", hl    = "TSField"},
      Struct        = {icon = "S", hl    = "TSType"},
      Event         = {icon = "", hl    = "TSType"},
      Operator      = {icon = "+", hl    = "TSOperator"},
      TypeParameter = {icon = "", hl    = "TSParameter"}
    }
  }
})
