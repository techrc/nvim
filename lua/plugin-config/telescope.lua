local status, telescope = pcall(require, "telescope")
if not status then
    vim.notify("telescope not found")
    return
end


telescope.setup({
    defaults = {
        initial_mode = "insert",
        mappings = require("key_cmd_bindings").telescope,
    },
    pickers = {
        find_files = {
            -- skin: [dropdown, cursor, ivy]
            -- theme = "dropdown", 
        }
    },
    extensions = {
    },
})
