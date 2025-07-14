return {
 	{
 		"catppuccin/nvim",
 		name = "catppuccin",
 		priority = 1000,
 		config = function()
 			require("catppuccin").setup({
 				flavour = "auto", -- latte, frappe, macchiato, mocha
 				background = { -- :h background
 					light = "latte",
 					dark = "mocha",
 				},
 				transparent_background = false, -- disables setting the background color.
 				show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
 				term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
 				dim_inactive = {
 					enabled = false, -- dims the background color of inactive window
 					shade = "dark",
 					percentage = 0.15, -- percentage of the shade to apply to the inactive window
 				},
 				no_italic = false, -- Force no italic
 				no_bold = false, -- Force no bold
 				no_underline = false, -- Force no underline
 				styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
 					comments = { "italic" }, -- Change the style of comments
 					conditionals = { "italic" },
 					loops = {},
 					functions = {},
 					keywords = {},
 					strings = {},
 					variables = {},
 					numbers = {},
 					booleans = {},
 					properties = {},
 					types = {},
 					operators = {},
 					-- miscs = {}, -- Uncomment to turn off hard-coded styles
 				},
 				color_overrides = {
 					all = {
 					},
 					latte = {
 					},
 					frappe = {},
 					macchiato = {},
 					mocha = {
 						base = "#000000",
 						mantle = "#000000",
 						crust = "#000000",
 						mauve = "#768078",
 						lavender = "#768078",
 						blue = "#cfb3a5",
 						peach = "#768078",
 						pink = "#768078",
 						red = "#cfb3a5",
 						maroon = "#cfb3a5",
 					},
 				},
 				custom_highlights = function(colors)
 					return {
 						Comment = { fg = "#645f64"  },
 						TabLineSel = { bg = colors.pink },
 						CmpBorder = { fg = colors.surface2 },
 						Pmenu = { bg = colors.none },
 						String = { fg = "#cfb3a5" },
 						Number = { fg = colors.peach },
 						Operator = { fg = "#8b8682" },
 						Method = { fg = "#768078" },
 						Function = { fg = "#cfb3a5" },
 						Keyword = { fg = "#768078" },
 						Information = { fg = colors.pink },
 						Braces = { fg = "#645f64" },
 						Delimiters = { fg = "#645f64" },
 					}
 				end,
 				default_integrations = true,
 				integrations = {
 					cmp = true,
 					gitsigns = true,
 					nvimtree = true,
 					treesitter = true,
 					notify = false,
 					mini = {
 						enabled = true,
 						indentscope_color = "",
 					},
 					-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
 				},
 			})
 		end,
 	}
}




-- return {
-- 	{
-- 		"catppuccin/nvim",
-- 		name = "catppuccin",
-- 		priority = 1000,
-- 		config = function()
-- 			require("catppuccin").setup {
-- 				custom_highlights = function(colors)
-- 					return {
-- 						Comment = { fg = colors.lavender  },
-- 						TabLineSel = { bg = colors.pink },
-- 						CmpBorder = { fg = colors.surface2 },
-- 						Pmenu = { bg = colors.none },
-- 						String = { fg = colors.teal },
-- 						Number = { fg = colors.peach },
-- 						Operator = { fg = colors.red },
-- 						Method = { fg = colors.sapphire },
-- 						Function = { fg = colors.sapphire },
-- 						Keyword = { fg = colors.green },
-- 						Information = { fg = colors.pink },
-- 					}
-- 				end,
--
-- 				config2 = function()
-- 						color_overrides = {
-- 							all = {
-- 								text = "#ffffff",
-- 							},
-- 							latte = {
-- 							},
-- 							frappe = {},
-- 							macchiato = {},
-- 							mocha = {
-- 								base = "#201d2a",
-- 								mantle = "#242424",
-- 								crust = "#474747",
-- 							},
-- 						}
-- 				end,
-- 			}
-- 		end,
-- 	},

