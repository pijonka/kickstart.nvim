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
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function() vim.g.mkdp_filetypes = { 'markdown' } end,
    ft = { 'markdown' },
  },
}
