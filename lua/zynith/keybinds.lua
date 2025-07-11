local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-f>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set("n", "<leader>t", "<cmd>terminal go run %<CR>")
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-l>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-m>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-e>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-i>", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<leader>k", "<cmd>Explore<CR>")
vim.keymap.set("n", "<leader>e", "ddkP")
vim.keymap.set("n", "<leader>n", "ddp")

vim.keymap.set("n", "m", "<left>")
vim.keymap.set("n", "n", "<down>")
vim.keymap.set("n", "e", "<up>")
vim.keymap.set("n", "i", "<right>")

vim.keymap.set("v", "m", "<left>")
vim.keymap.set("v", "n", "<down>")
vim.keymap.set("v", "e", "<up>")
vim.keymap.set("v", "i", "<right>")

vim.keymap.set("n", ",", "i")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "rt", "dd")

vim.keymap.set("v", "N", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "jd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", ".f",
	'oif err != nil {<CR>}<Esc>Ofmt.Println("skill issue", err)<Esc>')
