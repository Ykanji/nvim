local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    offsets = { { filetype = "NvimTree", text = "File Explorer", bg = '#282A36' } },
    always_show_bufferline = false,
    style_preset = bufferline.style_preset.minimal,
  },
}
