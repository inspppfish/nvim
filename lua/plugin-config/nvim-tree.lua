local status, nvim_tree = pcall(require, "nvim-tree")
if not status then 
	vim.notify("nvim-tree not found")
	return 
end

local list_keys = require('keybindings').nvimTreeList
nvim_tree.setup({
	-- 不显示git状态图标
	git =  {
		enable = false,
	},
	-- cwd是什么？
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	-- 隐藏 .file 和 node_modules文件夹
	filters = {
		dotfiles = true,
		custom = { 'node_modules' }
	},
	view = {
		width = 40,
		side = 'left',
		hide_root_folder = false,
		-- 自定义列表中的快捷键
		mappings = {
			custom_only = false,
			list = list_keys,
		},
		-- 不显示行数
		number = false,
		relativenumber = false,
		-- 显示图标
		signcolumn = 'yes',
	},
	actions = {
		open_file = {
			-- 首次打卡大小适配
			resize_window = true,
			-- 打开文件时关闭
			quit_on_open = true,
		},
	},
})
--自动关闭
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])

