local status, bufferline = pcall(require, "bufferline")
if not status then
	vim.notify("bufferline not found")
	return
end

-- configure bufferline
bufferline.setup({
	options = {
		-- 关闭tab的命令
		close_comamnd = "Bdelete! %d",
		-- 侧边栏配置
		-- 左侧让出nvim-tree的空间，显示文字 File Explorer
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
			},
		},
		-- 先使用nvim内置LSP
		diagnostics = "nvim_lsp"
	},
})
