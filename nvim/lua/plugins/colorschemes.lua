return {

  {
    'sphamba/smear-cursor.nvim',

    opts = {
      -- Smear cursor when switching buffers or windows.
      smear_between_buffers = true,

      -- Smear cursor when moving within line or to neighbor lines.
      -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
      smear_between_neighbor_lines = true,

      -- Draw the smear in buffer space instead of screen space when scrolling
      scroll_buffer_space = true,

      -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
      -- Smears and particles will look a lot less blocky.
      legacy_computing_symbols_support = false,

      -- Smear cursor in insert mode.
      -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
      smear_insert_mode = true,
    },
  },

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
