local function augroup(name)
  return vim.api.nvim_create_augroup("" .. name, { clear = true })
end

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.guicursor = ""

vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})

vim.lsp.enable('gopls')
vim.lsp.enable('pyright')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('typescript-language-server')
vim.lsp.config['typescript-language-server'] = {
	-- Command and arguments to start the server.
	cmd = { 'typescript-language-server', '--stdio' },

	-- Filetypes to automatically attach to.
	filetypes = { 'typescript' },
	filetypes = { 'javascript' },
}
vim.diagnostic.config({ virtual_text = true })
vim.opt.hlsearch = false
