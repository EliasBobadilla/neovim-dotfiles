local status, treesitter = pcall(require, 'nvim-treesitter.configs')

if(not status) then return end

treesitter.setup({
  highlight = { enable = true },
  indent = { enable = true },
  rainbow = {
    enable = true,
    extended_mode = true,
  },
})
