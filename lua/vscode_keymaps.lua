-- 设置leaderkey
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- 基本快捷键
map("n", "<C-a>", "ggVG", opt)

-- 窗口管理
-- 取消默认功能
map("n", "s", "", opt)
map("i", "<C-i>", "", opt)
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)
-- Alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
-- 左右比例控制
map("n", "<C-Left>", ":vertical resize 14<CR>", opt)
map("n", "<C-Right>", ":vertical resize +18<CR>", opt)
map("n", "s,", ":vertical resize -4<CR>", opt)
map("n", "s.", ":vertical resize +36<CR>", opt)
-- 上下比例
map("n", "sj", ":resize +26<CR>", opt)
map("n", "sk", ":resize 6<CR>", opt)
map("n", "<C-Down>", ":resize +18<CR>", opt)
map("n", "<C-Up>", ":resize 14<CR>", opt)
-- 等比例
map("n", "s=", "<C-w>=", opt)
-- Terminal相关
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- 上下滚动浏览
map("n", "<C-j>", "20j", opt)
map("n", "<C-k>", "20k", opt)
-- ctrl u / ctrl + d  只移动25行，默认移动半屏
map("n", "<C-u>", "25k", opt)
map("n", "<C-d>", "25j", opt)

-- 在visual 模式里粘贴不要复制
map("v", "p", '"_dP', opt)

-- insert 模式下，跳到行首行尾
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)
