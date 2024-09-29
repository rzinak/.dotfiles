return {
    {
        "Exafunction/codeium.vim",
        enabled = true,
        event = "BufEnter",
        config = function()
            vim.g.codeium_disable_bindings = 1
            vim.keymap.set("i", "<C-cr>", function()
                return vim.fn["codeium#Accept"]()
            end, { expr = true, silent = true })
            vim.keymap.set("i", "<c-;>", function()
                return vim.fn["codeium#CycleCompletions"](1)
            end, { expr = true, silent = true })
            vim.keymap.set("i", "<c-,>", function()
                return vim.fn["codeium#CycleCompletions"](-1)
            end, { expr = true, silent = true })
            vim.keymap.set("i", "<c-x>", function()
                return vim.fn["codeium#Clear"]()
            end, { expr = true, silent = true })
        end,
    },
    {
        'boganworld/crackboard.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
        require('crackboard').setup({
            session_key = '',
        })
        end,
    },
    {
        "HoNamDuong/hybrid.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "vyfor/cord.nvim",
        build = "./build",
        event = "VeryLazy",
        opts = {
            usercmds = true,
            log_level = "error",
            timer = {
                interval = 1500,
                reset_on_idle = false,
                reset_on_change = false,
            },
            editor = {
                image = nil,
                client = "neovim",
                tooltip = "The Only One Text Editor",
            },
            display = {
                show_time = true,
                show_repository = true,
                show_cursor_position = false,
                swap_fields = false,
                swap_icons = false,
                workspace_blacklist = {},
            },
            lsp = {
                show_problem_count = false,
                severity = 1,
                scope = "workspace",
            },
            idle = {
                enable = true,
                show_status = true,
                timeout = 300000,
                disable_on_focus = false,
                text = "Idle",
                tooltip = "💤",
            },
            text = {
                viewing = "Viewing {}",
                editing = "Editing {}",
                file_browser = "Browsing files in {}",
                plugin_manager = "Managing plugins in {}",
                lsp_manager = "Configuring LSP in {}",
                vcs = "Committing changes in {}",
                workspace = "Coding...",
            },
            buttons = {
                --        {
                --          label = 'View Repository',
                --          url = 'git',
                --        },
            },
            assets = nil,
        },
    },
    {
        "wakatime/vim-wakatime", lazy = false
    }
}
