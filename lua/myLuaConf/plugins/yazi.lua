return {
    {
        "yazi.nvim",
        event = { "DeferredUIEnter" },
        after = function(plugin)
            require("yazi").setup({
                open_for_directories = true,
            })
        end,
        init = function()
            -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
            -- vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
        end,
        keys = {
            {
                "<leader>yy",
                "<cmd>Yazi<CR>",
                mode = { "n" },
                desc = "Open yazi at the current file"
            },
            {
                "<leader>yw",
                "<cmd>Yazi cwd<CR>",
                mode =  { "n" },
                desc = "Open the file manager in nvim's working directory",
            },
            {
                "<leader>yr",
                "<cmd>Yazi toggle<CR>",
                mode = { "n" },
                desc = "Resume the last yazi session",
            },
        },
    }
};
