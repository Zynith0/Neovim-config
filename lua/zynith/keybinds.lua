local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-l>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- for colemak
vim.keymap.set("n", "<C-m>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-e>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-i>", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<leader>k", "<cmd>Explore<CR>")

-- for colemak
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

-- quicker deleting when using colemak-dh
vim.keymap.set("n", "rt", "dd")

-- moving lines
vim.keymap.set("v", "N", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "jd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", ".f",
	'oif err != nil {<CR>}<Esc>Ofmt.Println("skill issue", err)<Esc>')

vim.keymap.set("n", "k", "n")

-- surrounding and deleting brackets
vim.keymap.set("n", "d(", "f(ldi(va(p")
vim.keymap.set("n", "d[", "f[ldi[va[p")
vim.keymap.set("n", "d{", "f{ldi{va{p")
vim.keymap.set("n", "s$", "i(<Esc>$a)<Esc>")
vim.keymap.set("n", "sw", "i(<Esc>wwi)<Esc>")
vim.keymap.set("n", "siw", "bi(<Esc>wwi)<Esc>")
vim.keymap.set("n", "sW", "i(<Esc>WWi)<Esc>")
vim.keymap.set("n", "siW", "Bi(<Esc>WWi)<Esc>")

-- experimental writing keybinds (no idea if I like these)
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>wq", "<cmd>wq<CR>")
