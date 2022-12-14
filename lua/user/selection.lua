local map = function(mode, key, command)
    vim.api.nvim_set_keymap(mode, key, command,
                            { noremap = true, silent = true })
end
map ( "i", "<S-up>", "<c-o><S-v>k" )
map ( "i", "<S-down>", "<c-o><S-v>j" )
map ( "v", "<S-up>", "<up>" )
map ( "v", "<S-down>", "<down>" )

-- trigger visual line from normal mode using shift
map ( "n", "<S-up>", "<S-v>k" )
map ( "n", "<S-down>", "<S-v>j" )

-- undo
map("n", "<C-z>", "u", noremap_silent)
map("i", "<C-z>", "<C-o>u", noremap_silent)
map("v", "<C-z>", "<esc>u", noremap_silent)

-- redo
-- redo for normal mode is built-in
map("i", "<C-r>", "<C-o><C-r>", noremap_silent)
map("v", "<C-r>", "<esc><C-r>", noremap_silent)

