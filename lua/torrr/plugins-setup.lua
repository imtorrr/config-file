local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim")
  use("neovim/nvim-lspconfig")-- Collection of configurations for built-in LSP client
  use("hrsh7th/nvim-cmp")-- Autocompletion plugin
  use("hrsh7th/cmp-nvim-lsp")-- LSP source for nvim-cmp
  use("saadparwaiz1/cmp_luasnip")-- Snippets source for nvim-cmp
  use("L3MON4D3/LuaSnip")-- Snippets plugin use("nvim-lua/plenary.nvim")
  use("onsails/lspkind.nvim")
  use("bluz71/vim-nightfly-guicolors")
  use("christoomey/vim-tmux-navigator")
  use("numToStr/Comment.nvim")
  use("nvim-tree/nvim-tree.lua")
  use("kyazdani42/nvim-web-devicons")
  use("nvim-lualine/lualine.nvim")
  use("windwp/nvim-autopairs")
  if packer_bootstrap then
    packer.sync()
  end
end)

