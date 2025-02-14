return {
  vim.keymap.set('n', '<leader>tr', ":lua require('jester').run() <CR>", { desc = '[T]est [r]un' }),
  vim.keymap.set('n', '<leader>tf', ":lua require('jester').run_file() <CR>", { desc = '[T]est [f]ile' }),
  vim.keymap.set('n', '<leader>tl', ":lua require('jester').run_last() <CR>", { desc = '[T]est [l]ast' }),
  require('jester').setup {
    cmd = 'yarn test -- $file',
  },
}
