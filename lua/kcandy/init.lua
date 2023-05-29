local M = { }
local colors = require("kcandy.colors")

local function kcandy_setup(user_config)
	local highlight_groups = {
		Normal = { fg = "#f8f8f2", bg = colors.default.bg },
		String = { fg = colors.default.ngreen, bg = colors.default.none },
		Character = { fg = colors.default.ngreen, bg = colors.default.none },
		Special = { fg = colors.default.nred },
		Type = { fg = colors.default.npink, bold = true },
		Constant = { fg = colors.default.nred },
		PreProc = { fg = colors.default.npurple },
		Identifier = { fg = colors.default.ncyan },
		Function = {fg = colors.default.dgreen },
		CComment = {fg = colors.default.ngrey},
		Statement = { fg = colors.default.ngreen,  bold = true },
		KTreeFile = { fg = colors.default.npink, bold = true},
		KTreeDir = { fg = colors.default.ncyan, bold = true },
		KTreeCWD = { fg = colors.default.npurple, bold = true },
		LineNr = { fg = colors.default.ncyan },
	}


	for k,v in pairs(highlight_groups) do
		vim.api.nvim_set_hl(0, k, v)
	end
end

M.setup = kcandy_setup

return M
