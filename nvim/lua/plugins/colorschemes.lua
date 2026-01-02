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
  {
    'Mofiqul/vscode.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = 'dark'
    end,
  },
  {
    'miikanissi/modus-themes.nvim',
    priority = 1000,
    config = function()
      require('modus-themes').setup {
        style = 'modus_operandi', -- Always use modus_operandi regardless of `vim.o.background`
        variant = 'deuteranopia', -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
        styles = {
          comments = { italic = true },
          keywords = { italic = false },
          functions = {},
          variables = {},
        },

        on_colors = function(colors)
          colors.error = colors.red_faint -- Change error color to the "faint" variant
        end,
        on_highlights = function(highlight, color)
          highlight.Boolean = { fg = color.green } -- Change Boolean highlight to use the green color
        end,
      }
    end,
  },
}
