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
                { "<leader>c",         group = "[c]ode" },
                { "<leader>c_",        hidden = true },
                { "<leader>d",         group = "[d]ocument" },
                { "<leader>d_",        hidden = true },
                { "<leader>g",         group = "[g]it" },
                { "<leader>g_",        hidden = true },
                { "<leader>m",         group = "[m]arkdown" },
                { "<leader>m_",        hidden = true },
                { "<leader>r",         group = "[r]ename" },
                { "<leader>r_",        hidden = true },
                { "<leader>s",         group = "[s]earch" },
                { "<leader>s_",        hidden = true },
                { "<leader>t",         group = "[t]oggles" },
                { "<leader>t_",        hidden = true },
                { "<leader>w",         group = "[w]orkspace" },
                { "<leader>w_",        hidden = true },
            })
        end,
    },
}
