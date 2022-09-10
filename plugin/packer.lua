local status, packer = pcall(require, 'packer')

if(not status) then return end

packer.startup(function(use)
  use('wbthomason/packer.nvim')

  use('github/copilot.vim')
  
  use({
    'neoclide/coc.nvim',
    branch = 'release',
  })
  
  use({
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function()
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  })
  
  use('lewis6991/gitsigns.nvim')
  
  use('tpope/vim-surround')
  
  use({
    'b3nj5m1n/kommentary',
    config = function()
      require('kommentary.config').use_extended_mappings()
    end,
  })
  
  use({
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly',
  })

  use({
    'nacro90/numb.nvim',
    config = function()
      require('numb').setup()
    end,
    opt = true
  })

  use({
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-file-browser.nvim',
      'nvim-telescope/telescope-fzy-native.nvim',
    },
  })

  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

  use('glepnir/dashboard-nvim')
  
  use('nvim-lualine/lualine.nvim')
  
  use('p00f/nvim-ts-rainbow')
  
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  use({ 'marko-cerovac/material.nvim', opt = false, as = 'material' })

  use ({
    'tanvirtin/vgit.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('vgit').setup()
    end,
    opt = true,
  })

  use({ 'kdheepak/lazygit.nvim', opt = true })

  use({
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('indent_blankline').setup({
      buftype_exclude = { 'terminal', 'dashboard' },
      show_current_context = true,
      show_current_context_start = true,
      space_char_blankline = " ",
      char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
      },
    })
    end,
    opt = true,
  })

  use({ 'ellisonleao/glow.nvim', run = 'GlowInstall', opt = true })

  use({ 'Pocco81/auto-save.nvim', opt = true })

  use({
    'AckslD/nvim-neoclip.lua',
    config = function()
      require('neoclip').setup()
      require('telescope').load_extension('neoclip')
    end,
    opt = true,
  })

end)
