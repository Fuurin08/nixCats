return {
    {
        "fzf-lua",
        lazy = false,
        after = function()
            require("fzf-lua").setup({
                "hide",
            })
        end,
        keys = {
            {
                "<leader>ff",
                "<cmd>FzfLua files<cr>",
                -- function ()
                    -- return require("fzf-lua").files()
                -- end,
                mode = { "n" },
                desc = "[F]zF Lua",
            },
            {
                "<leader>fb",
                "<cmd>FzfLua buffers<cr>",
                mode = { "n" },
                desc = "[F]zF [B]uffers",
            },
            {
                "<leader>fw",
                "<cmd>FzfLua live_grep<cr>",
                mode = { "n" },
                desc = "[F]zF [W]ord",
            },
            {
                "<leader>fr",
                "<cmd>FzfLua resume<cr>",
                mode = { "n" },
                desc = "[R]esume the last fzf-lua session",
            }
        }
    }
}
