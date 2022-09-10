local status, icons = pcall(require, 'nvim-web-devicons')

if(not status) then return end

icons.setup({
  override = {
    lock = { icon = '', color = '#428850', name = 'lock' },
    zip = { icon = '', color = '#428850', name = 'zip' },
    xz = { icon = '', color = '#428850', name = 'xz' },
    deb = { icon = '', color = '#428850', name = 'deb' },
    rpm = { icon = '', color = '#428850', name = 'rpm' },
    mp3 = { icon = '', color = '#428850', name = 'mp3' },
    mp4 = { icon = '', color = '#428850', name = 'mp4' },
    cjs = { icon = '', color = '#428850', name = 'cjs' },
  },
})
