local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use { "nvim-lua/plenary.nvim" }
--tree
  use 'nvim-tree/nvim-tree.lua'
-- Themes, line, syntax highlighting, icons
  use 'Mofiqul/dracula.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/bufferline.nvim'
  use "akinsho/toggleterm.nvim"
  use { "windwp/nvim-autopairs" }
  use "numToStr/Comment.nvim"
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }
-- EasyMotion
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }
  use 'ziontee113/syntax-tree-surfer'
--CMP
  use { "hrsh7th/nvim-cmp" } -- The completion plugin
  use { "hrsh7th/cmp-buffer" } -- buffer completions
  use { "hrsh7th/cmp-path" } -- path completions
  use { "saadparwaiz1/cmp_luasnip" } -- snippet completions
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-nvim-lua" }
  	-- Snippets
  use { "L3MON4D3/LuaSnip" } --snippet engine
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use
-- LSP
  use 'neovim/nvim-lspconfig'
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  use { "jose-elias-alvarez/null-ls.nvim", } -- for formatters and linters
  use { "RRethy/vim-illuminate" }
-- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "MunifTanjim/nui.nvim"
  use "nvim-lua/plenary.nvim"
-- ChatGPT
  use({
    "jackMort/ChatGPT.nvim",
      config = function() require("user.plugins_config.chatgpt") end,
      requires = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
      }
  })
-- Translator
  use {
    "niuiic/translate.nvim",
    "niuiic/niuiic-core.nvim"
  }
-- Git
  use { "lewis6991/gitsigns.nvim" }

-- Degug
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'mfussenegger/nvim-dap-python'
  use 'nvim-neotest/neotest'
  use 'nvim-neotest/neotest-python'


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
