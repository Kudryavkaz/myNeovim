local opt = { noremap = true, silent = true }

-- python
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.api.nvim_buf_set_keymap(0, "n", "<F5>", "<cmd>!python %", opt)
	end,
})

-- cpp
vim.api.nvim_create_autocmd("FileType", {
	pattern = "cpp",
	callback = function()
        -- 编译 space+b
		vim.api.nvim_buf_set_keymap(0, "n", "<space>b", "<cmd>!g++ -g % -o %:r<CR>", opt)
        -- 运行 F5
        local fileName = vim.api.nvim_buf_get_name(0)
        local fileBasename = string.gsub(fileName, ".cpp", "")
        local run = "<cmd>sp | terminal<CR><cmd>resize -8<CR>i" .. fileBasename .. "<CR>"
		vim.api.nvim_buf_set_keymap(0, "n", "<F5>", run, opt)
	end,
})
