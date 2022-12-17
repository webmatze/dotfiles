-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")

  -- lua functions that are used by many plugins
  use("nvim-lua/plenary.nvim")

  -- add more plugins here
  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation
  use("szw/vim-maximizer") -- maximizes and restores current window
  use("tpope/vim-surround") -- surround insert (ys), delete (ds), change (cs)
  use("vim-scripts/ReplaceWithRegister") -- needed for vim-surround
  use("nvim-tree/nvim-tree.lua") -- file explorer
  use("nvim-tree/nvim-web-devicons") -- for nvim-tree file icons
  use("nvim-lualine/lualine.nvim") -- fancy statusline
  -- START: telescope
  use({ "nvim-treesitter/nvim-treesitter", run = ':TSUpdate' }) -- finder/preview
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
  use({
    "nvim-telescope/telescope.nvim", branch = "0.1.x", -- the telescope plugin
    requires = { { 'nvim-lua/plenary.nvim' } }
  })
  use({'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }) -- native c zfz implementation
  -- END: telescope
  use("zbirenbaum/copilot.lua") -- github copilot integration
  use("folke/which-key.nvim") -- show keybindings
  use('rcarriga/nvim-notify') -- notifications
  use('goolord/alpha-nvim') -- dashboard

  -- add colorscheme here
  use('folke/tokyonight.nvim')
  -- use("dracula/vim")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
