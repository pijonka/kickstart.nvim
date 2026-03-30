-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'preservim/nerdtree',
    keys = {
      { '<leader>n', '<cmd>NERDTreeFocus<CR>', desc = 'NERDTree Focus' },
      { '<C-n>', '<cmd>NERDTree<CR>', desc = 'Open NERDTree' },
      { '<C-t>', '<cmd>NERDTreeToggle<CR>', desc = 'Toggle NERDTree' },
      { '<C-f>', '<cmd>NERDTreeFind<CR>', desc = 'Find current file in NERDTree' },
    },
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,
  },
}
