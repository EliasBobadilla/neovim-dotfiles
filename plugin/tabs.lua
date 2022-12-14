local status, bufferline = pcall(require, 'bufferline')

if(not status) then return end

bufferline.setup({
  options = { 
    diagnostics = 'coc',
    show_buffer_close_icons = false,
    offsets = {
      { filetype = 'NvimTree', text = 'File Explorer', text_align = 'center', separator = true },
    },
  }
})
