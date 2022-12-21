local packer = require("packer")
packer.startup({
	function(use)
	-- 插件列表
	-- packer 可以管理自身
	use ('wbthomason/packer.nvim')
	-- tokyonight
	use ("folke/tokyonight.nvim")
	-- OceanicNext
	use("mhartington/oceanic-next")
	-- gruvbox
	use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })
	-- nord
	use("shaunsingh/nord.nvim")
	-- onedark
	use("ful1e5/onedark.nvim")
	-- nightfox
	use("EdenEast/nightfox.nvim")
	-- nvim-tree
	use({ 
		"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons"
	})
	-- bufferline
	use({
		"akinsho/bufferline.nvim", 
		requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }
	})
	-- lualine
	use({ "nvim-lualine/lualine.nvim", 
	requires = {"kyazdani42/nvim-web-devicons" }})
	end,
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single"})
			end,
		},
	},
})

