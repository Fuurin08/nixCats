return {
    {
        "which-key.nvim",
        for_cat = "general.extra",
        -- cmd = { "" },
        event = "DeferredUIEnter",
        -- ft = "",
        -- keys = "",
        -- colorscheme = "",
        -- colorscheme = "",
        load = function(name)
            vim.cmd.packadd(name)
            vim.cmd.packadd("telescope-fzf-native.nvim")
            vim.cmd.packadd("telescope-ui-select.nvim")
        end,
        after = function(plugin)
            require("which-key").setup({
                preset = "modern",
            })
            require("which-key").add({
                { "<leader><leader>",  group = "buffer commands" },
                { "<leader><leader>_", hidden = true },
                { "<leader>c",         group = "[C]ode" },
                { "<leader>c_",        hidden = true },
                { "<leader>d",         group = "[D]ocument" },
                { "<leader>d_",        hidden = true },
                { "<leader>g",         group = "[G]it" },
                { "<leader>g_",        hidden = true },
                { "<leader>m",         group = "[M]arkdown" },
                { "<leader>m_",        hidden = true },
                { "<leader>r",         group = "[R]ename" },
                { "<leader>r_",        hidden = true },
                { "<leader>s",         group = "[S]earch" },
                { "<leader>s_",        hidden = true },
                { "<leader>t",         group = "[T]oggles" },
                { "<leader>t_",        hidden = true },
                { "<leader>w",         group = "[W]orkspace" },
                { "<leader>w_",        hidden = true },

                { "<leader>y",         group = "[Y]azi" },
                { "<leader>y_",        hidden = true },
                { "<leader>f",         group = "[F]zf" },
                { "<leader>f_",        hidden = true },
            })
        end,
    },
}
