vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local keymap = vim.keymap
-- 复用opt参数
local opt = { noremap = true, silent = true }
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
--map("n", "<Tab>", ">>", opt)
--map("v", "<Tab>", ">", opt)
--map("n", "<S-	>", "<<", opt)
map("v", "<S-	>", "<", opt)
-- ctrl-S保存
map("n", "<C-s>", ":w<CR>", opt)

---------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
