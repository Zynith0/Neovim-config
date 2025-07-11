return {
	"rose-pine/neovim",
	config = function()
		require("rose-pine").setup({
			styles = {
				bold = false,
				italic = false,
				transparency = false,
			},
		})
		vim.cmd "colorscheme rose-pine-moon"
	end
}
