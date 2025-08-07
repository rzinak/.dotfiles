return {
  {
    'rzinak/gruber-darker.nvim',
    opts = {
      bold = false,
      invert = {
        signs = false,
        tabline = false,
        visual = false,
      },
      italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = true,
      },
      undercurl = true,
      underline = true,
    },
  },
  { 'rebelot/kanagawa.nvim' },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = 'light'

      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_foreground = 'original'

      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
}
