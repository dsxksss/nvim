-- 设置leader快捷键为空格键
vim.g.mapleader = " "

local keymap = vim.keymap

-- leader 键为空格键
keymap.set("n","<leader>q","<Cmd>q<CR>")
keymap.set("n","<leader>w","<Cmd>w<CR>")

-- 全选
keymap.set("n","<C-a>","gg<S-v>G")

-- 新开一个窗口
keymap.set("n","<leader>ss",":vsplit<Return><C-w>w",{silent = true})

-- 聚焦不同窗口
-- f键切换聚焦
-- 以下键均为切换窗口聚焦
keymap.set("n","f","<C-w>w")
keymap.set("n","<leader>sh","<C-w>h")
keymap.set("n","<leader>sj","<C-w>j")
keymap.set("n","<leader>sk","<C-w>k")
keymap.set("n","<leader>sl","<C-w>l")

-- 调整不同窗口的间距
keymap.set("n","<leader>s<left>","<C-w><")
keymap.set("n","<leader>s<right>","<C-w>>")
keymap.set("n","<leader>s<up>","<C-w>+")
keymap.set("n","<leader>s<down>","<C-w>-")
