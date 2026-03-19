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
      vim.o.background = 'light'
    end,
  },
  {
    'webhooked/kanso.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('kanso').setup {
        bold = true, -- enable bold fonts
        italics = true, -- enable italics
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = {},
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { zen = {}, pearl = {}, ink = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        background = { -- map the value of 'background' option to a theme
          dark = 'ink', -- try "zen", "mist" or "pearl" !
          light = 'pearl', -- try "zen", "mist" or "ink" !
        },
        foreground = 'default', -- "default" or "saturated" (can also be a table like background)
        minimal = false, -- reduced color palette for a more minimal look
      }
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
