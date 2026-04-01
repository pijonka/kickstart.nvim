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
  {
    'tpope/vim-fugitive',
  },
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'skim'
      vim.g.vimtex_compiler_latexmk = {
        out_dir = 'build',
      }
    end,
  },
}
