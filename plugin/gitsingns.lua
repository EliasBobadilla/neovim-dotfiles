local status, gitsigns = pcall(require, 'gitsigns')

if(not status) then return end

gitsigns.setup({
  signs = {
    add = {
      hl = 'GitSignsAdd',
      text = '▎',
      numhl = 'GitSignsAddNr',
      linehl = 'GitSignsAddLn',
    },
    change = {
      hl = 'GitSignsChange',
      text = '▎',
      numhl = 'GitSignsChangeNr',
      linehl = 'GitSignsChangeLn',
    },
    delete = {
      hl = 'GitSignsDelete',
      text = '契',
      numhl = 'GitSignsDeleteNr',
      linehl = 'GitSignsDeleteLn',
    },
    topdelete = {
      hl = 'GitSignsDelete',
      text = '契',
      numhl = 'GitSignsDeleteNr',
      linehl = 'GitSignsDeleteLn',
    },
    changedelete = {
      hl = 'GitSignsChange',
      text = '▎',
      numhl = 'GitSignsChangeNr',
      linehl = 'GitSignsChangeLn',
    },
  },
  numhl = false,
  linehl = false,
  keymaps = { noremap = true, buffer = true },
  watch_gitdir = { interval = 1000 },
  sign_priority = 6,
  update_debounce = 200,
})
