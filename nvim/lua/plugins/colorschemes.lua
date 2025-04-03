return {
  { 'rebelot/kanagawa.nvim' },
  { 'HoNamDuong/hybrid.nvim' },
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
        comments = true,
        operators = false,
        folds = true,
      },
      undercurl = true,
      underline = true,
    },
  },
}
