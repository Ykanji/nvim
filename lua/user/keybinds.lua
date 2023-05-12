local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

map('n', '<leader>nh', ':nohlsearch<CR>')
map('n', '<leader>rc', ':luafile %<CR>')
map('n', '<Leader>rc', ':source %<cr>')
