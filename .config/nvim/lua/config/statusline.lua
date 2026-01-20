for group, color in pairs({
	mode = { bg = '#44D3FC', fg = '#15161E', bold = true },
	file = { bg = '#15161E', fg = '#38405C', bold = false },
	modi = { bg = '#15161E', fg = '#FC0D65', bold = true },
	buff = { bg = '#15161E' },
	line = { bg = '#15161E', fg = '#44D3FC', bold = true }}) do
	vim.api.nvim_set_hl(0, "HL_"..group, color)
end

_G.status_mode = function()
	local mode = vim.fn.mode(1)

	local modes = {
		n  = "NORMAL",
		i  = "INSERT",
		v  = "VISUAL",
		V  = "VISUAL",
		["\22"] = "B-VISUAL",
		R  = "REPLACE",
		c  = "COMMAND",
		s  = "S",
		S  = "S",
		t  = "TERMINAL",
		no = "O-PENDING",
	}

	return modes[mode] or mode
end

vim.opt.statusline = table.concat({
	"%#HL_mode# %-3{% v:lua.status_mode()%} %*",
	"%#HL_file# %-.50f%* ",
	"%#HL_modi#%{&modified?'[+]':''}%*",
	"%=",
	--"%#HL_buff#%n%*",
	--"%#HL_line# %L%*",
	"%#HL_line#  %l:%v %*"}, "")
