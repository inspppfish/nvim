vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
-- 复用opt参数
local opt = {noremap = true, silent = true}
-- 取消s默认功能
map("n", "s", "", opt)
-- 我更喜欢ijkl
map("n", "h", "i", opt)
map("n", "h", "i", opt)
map("n", "j", "h", opt)
map("v", "j", "h", opt)
map("n", "i", "k", opt)
map("v", "i", "k", opt)
map("n", "k", "j", opt)
map("v", "k", "j", opt)
map("n", "I", "5k", opt)
map("v", "I", "5k", opt)
map("n", "K", "5j", opt)
map("v", "K", "5j", opt)
map("n", "L", "5l", opt)
map("v", "L", "5l", opt)
map("n", "J", "5h", opt)
map("v", "J", "5h", opt)
--map("i", "<C-i>", "<Up>", opt) -- 这两句和<Tab>冲突
--map("i", "<C-I>", "<Up>", opt)
map("i", "<C-j>", "<left>", opt)
map("i", "<c-j>", "<left>", opt)
--map("i", "<c-k>", "<down>", opt) -- 向上没有的话向下也不要了
--map("i", "<c-k>", "<down>", opt)
map("i", "<c-l>", "<right>", opt)
map("i", "<c-l>", "<right>", opt)
-- 翻页
map("n", "<c-f>", "", opt)
map("v", "<c-f>", "", opt)
map("n", "<c-l>", "<c-f>", opt)
map("v", "<c-l>", "<c-f>", opt)
map("n", "<c-j>", "<c-b>", opt)
map("v", "<c-j>", "<c-b>", opt)
-- 分屏
map("n", "si", ":set nosplitbelow<cr>:split<cr>", opt)
map("n", "sk", ":set splitbelow<cr>:split<cr>", opt)
map("n", "sj", ":set nosplitright<cr>:vsplit<cr>", opt)
map("n", "sl", ":set splitright<cr>:vsplit<cr>", opt)
map("n", "stj", ":set nosplitright<cr>:vsplit|terminal<cr>", opt)
map("n", "stl", ":set splitright<cr>:vsplit|terminal<cr>", opt)
map("n", "<leader>i", "<c-w>k", opt)
map("n", "<leader>k", "<c-w>j", opt)
map("n", "<leader>j", "<c-w>h", opt)
map("n", "<leader>l", "<c-w>l", opt)
-- tabe
map("n", "tu", ":tabe<cr>", opt)
--map("n", "tj", ":-tabnext<cr>", opt)
--map("n", "tl", ":+tabnext<cr>", opt)
map("n", "tj", ":BufferLineCyclePrev<CR>", opt)
map("n", "tl", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "tt", ":tabe|terminal<cr>", opt) 
-- terminal mode
map("t", "<esc>", "<c-\\><c-n>", opt)
map("t", "<a-i>", "<c-\\><c-n><c-w>k", opt)
map("t", "<a-j>", "<c-\\><c-n><c-w>h", opt)
map("t", "<a-k>", "<c-\\><c-n><c-w>j", opt)
map("t", "<a-l>", "<c-\\><c-n><c-w>l", opt)
-- 缩进编辑
map("n", "<Tab>", ">>", opt)
map("v", "<Tab>", ">", opt)
map("n", "<S-	>", "<<", opt)
map("v", "<S-	>", "<", opt)
-- ctrl-S保存
map("n", "<C-s>", ":w<CR>", opt)

--插件快捷键
local pluginKeys = {}

-- nvim-tree
-- alt + m to open and close tree
map ("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
-- 列表快捷键
pluginKeys.nvimTreeList = {
	-- open file or directory
	{ key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
	-- 分屏打开文件
	-- 先不写
	-- 显示隐藏文件 这部分操作定义在插件配置文件的filter
	{ key = "u", action = "toggle_custom"},
	{ key = "h", action = "toggle_dotfiles"}, 
	--文件操作
	{ key = "<F5>", action = "refresh" },
	{ key = "a", action = "create" },
	{ key = "d", action = "remove" },
	{ key = "r", action = "rename" },
	{ key = "x", action = "cut" },
	{ key = "c", action = "copy" },
	{ key = "p", action = "paste" },
	{ key = "s", action = "system_open" },
}
return pluginKeys
