-- Auto starts/closes preview on markdown buffers
vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1

vim.keymap.set('n', '<leader>md', ':MarkdownPreviewToggle<CR>', { desc = '[M]ark [D]down' })
