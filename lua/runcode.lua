local opt = { noremap = true, silent = true }
local term = "<cmd>sp | terminal<CR><cmd>resize -8<CR>i"
-- python
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
        local run = term .. "python " .. vim.api.nvim_buf_get_name(0) .. "<CR>"
		vim.api.nvim_buf_set_keymap(0, "n", "<C-F5>", run, opt)
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
        local run = term .. fileBasename .. "<CR>"
		vim.api.nvim_buf_set_keymap(0, "n", "<F10>", run, opt)
	end,
})

-- 便捷关闭终端
vim.api.nvim_create_autocmd("FileType", {
    pattern = "",
    callback = function()
        vim.api.nvim_buf_set_keymap(0, "n", "q", "<cmd>q", opt)
    end,
})
