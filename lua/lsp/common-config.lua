local M = {}

M.keyAttach = function(bufnr)
    require("key_cmd_bindings").lsp(function (mode, lhs, rhs)
        vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, buffer = bufnr })
    end)
end


M.disableFormat = function(client)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
end

--M.capabilities = require("cmp_nvim_lsp").default_capabilities()

M.flags = {
    debounce_text_changes = 150,
}

return M
