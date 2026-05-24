-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  { 'folke/tokyonight.nvim', enabled = false },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000, -- Load this first to ensure it's applied to the UI
    lazy = false,
    config = function()
      -- Optional: Set background before applying the theme
      vim.o.background = 'dark' -- or "light"

      -- Load the colorscheme
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
}
