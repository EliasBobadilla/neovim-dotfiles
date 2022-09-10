local status, tree = pcall(require, 'nvim-tree')

if(not status) then return end

tree.setup({
  view = {
    adaptive_size = true,
    width = 25,
  }
})
