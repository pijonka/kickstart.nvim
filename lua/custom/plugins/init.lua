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
      { '<C-t>', '<cmd>NERDTreeToggle<CR>', desc = 'Toggle NERDTree' },
    },
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,
    keys = {
      { '<leader>tt', '<cmd>ToggleTerm size=3<CR>', desc = '[T]oggle [T]erminal' },
    },
  },
  {
    'tpope/vim-fugitive',
  },
  {
    'lervag/vimtex',
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_compiler_latexmk = {
        out_dir = 'build',
      }
    end,
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function() vim.g.mkdp_filetypes = { 'markdown' } end,
    ft = { 'markdown' },
  },
}
