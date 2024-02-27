local status, ibl = pcall(require, "ibl")
if not status then
	vim.notify("没有找到 indent_blankline")
	return
end

local highlight = {
	"CursorColumn",
	"Whitespace",
}

ibl.setup({
	exclude = {
		filetypes = {
			"dashboard",
		},
	},
	indent = { highlight = highlight, char = "" },
	whitespace = {
		highlight = highlight,
		remove_blankline_trail = false,
	},
	scope = { enabled = false },
})
