-- 设置leader快捷键为空格键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- ----------- 普通模式 ----------- --
-- 窗口
keymap.set("n","<leader>sv","<C-w>v") -- 水平新增窗口
keymap.set("n","<leader>sh","<C-w>s") -- 水平新增窗口

-- 文件
keymap.set("n","<leader>q","<Cmd>q<CR>") -- 文件退出
keymap.set("n","<leader>w","<Cmd>w<CR>") -- 文件保存

-- 插件
-- nvim-tree
keymap.set("n","<leader>b",":NvimTreeToggle<CR>") -- 打开/关闭文档树

-- 切换buffer
keymap.set("n", "<leader>h", ":bnext<CR>")
keymap.set("n", "<leader>l", ":bprevious<CR>")

-- ----------- 插入模式 ----------- --
keymap.set("i","jk","<ESC>")

-- ----------- 视觉模式 ----------- --
