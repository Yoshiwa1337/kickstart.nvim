-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  vim.keymap.set('n', '<leader>gs', vim.cmd.Git),

  vim.keymap.set('n', '<leader>gp', function()
    vim.cmd.Git 'push'
  end),

  vim.keymap.set('n', '<leader>gP', function()
    vim.cmd.Git { 'pull', '--rebase' }
  end),

  vim.keymap.set('n', '<leader>gt', ':Git push -u origin '),

  vim.keymap.set('n', '<leader>gl', '<cmd>diffget //2<CR>'),
  vim.keymap.set('n', '<leader>gr', '<cmd>diffget //3<CR>'),
}
