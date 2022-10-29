local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "buffers",
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    color_icons = true,
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    truncate_names = true, -- whether or not tab names should be truncated
    tab_size = 18,
    hover = {
        enabled = true,
        delay = 200,
        reveal = {'close'}
    },
  },
})

-- vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineMoveNext<CR>', {})
-- vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineMovePrev<CR>', {})

