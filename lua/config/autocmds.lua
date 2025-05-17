local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local map = vim.keymap.set

-- Resize mappings
map("n", "<M-h>", ":vertical resize -5<CR>", { desc = "Resize window left" })
map("n", "<M-j>", ":resize +5<CR>", { desc = "Resize window down" })
map("n", "<M-k>", ":resize -5<CR>", { desc = "Resize window up" })
map("n", "<M-l>", ":vertical resize +5<CR>", { desc = "Resize window right" })

-- Toggle spell check with F6
map("n", "<F6>", ":setlocal spell! spelllang=en_us<CR>", { desc = "Toggle spell check" })

-- Remap Q to format current paragraph
map("n", "Q", "gqip", { desc = "Format paragraph" })

-- Hide fugitive buffers after closing
autocmd("BufReadPost", {
  pattern = "fugitive://*",
  command = "set bufhidden=delete",
})

-- Fix keybindings for fugitive
-- Note: don't need this since key mapping is handled in astrocore.lua already
-- autocmd("FileType", {
--   pattern = { "fugitiveblame", "fugitive" },
--   callback = function()
--     -- vim.keymap.set("n", "q", "gq", { buffer = true, desc = "Remap q to gq" })
--     vim.keymap.set("n", "D", "dd", { buffer = true, desc = "Remap D to dd" })
--   end,
-- })
