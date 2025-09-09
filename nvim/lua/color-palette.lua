local M = {}

M.colors = {
	{ name = "Rosewater", hex = "#f5e0dc" },
	{ name = "Flamingo", hex = "#f2cdcd" },
	{ name = "Pink", hex = "#f5c2e7" },
	{ name = "Mauve", hex = "#cba6f7" },
	{ name = "Red", hex = "#f38ba8" },
	{ name = "Maroon", hex = "#eba0ac" },
	{ name = "Peach", hex = "#fab387" },
	{ name = "Yellow", hex = "#f9e2af" },
	{ name = "Green", hex = "#a6e3a1" },
	{ name = "Teal", hex = "#94e2d5" },
	{ name = "Sky", hex = "#89dceb" },
	{ name = "Sapphire", hex = "#74c7ec" },
	{ name = "Blue", hex = "#89b4fa" },
	{ name = "Lavender", hex = "#b4befe" },
	{ name = "Text", hex = "#cdd6f4" },
	{ name = "Overlay_2", hex = "#9399b2" },
	{ name = "Overlay_1", hex = "#7f849c" },
	{ name = "Overlay_0", hex = "#6c7086" },
	{ name = "Surface_2", hex = "#585b70" },
	{ name = "Surface_1", hex = "#45475a" },
	{ name = "Surface_0", hex = "#313244" },
	{ name = "Base", hex = "#1e1e2e" },
	{ name = "Mantle", hex = "#181825" },
	{ name = "Crust", hex = "#11111b" },
}

-- Define highlights once, so names appear in their color
for _, c in ipairs(M.colors) do
	vim.api.nvim_set_hl(0, "Color_" .. c.name, { fg = c.hex })
	local hex_hl = "Hex_" .. c.hex:gsub("#", "x")
	vim.api.nvim_set_hl(0, hex_hl, { bg = c.hex })
end

function M.show_colors()
	local items = {}

	for idx, color in ipairs(M.colors) do
		local item = {
			idx = idx,
			name = color.name,
			hex = color.hex,
			action = function()
				vim.fn.setreg("+", color.hex)
				vim.notify("Copied " .. color.name .. " to clipboard", vim.log.levels.INFO)
			end,
		}
		table.insert(items, item)
	end

	Snacks.picker({
		title = "Color Palette",
		layout = { preset = "vscode" },
		items = items,
		format = function(item, _)
			local hex_hl = "Hex_" .. item.hex:gsub("#", "x")
			return {
				{ string.format("   %-60s", item.name), "Color_" .. item.name }, -- colored name
				{ " " .. item.hex, hex_hl }, -- dim hex code
			}
		end,
		confirm = function(picker, item)
			picker:norm(function()
				picker:close()
				item.action()
			end)
		end,
	})
end

return M
