return {
    "snacks.nvim",
    lazy = false,
    after = function()
        require("snacks").setup({
            bigfile = { enabled = true },
            -- dashboard = { enabled = true },
            -- explorer = { enabled = true },
            indent = { enabled = true },
            -- input = { enabled = true },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            scope = { enabled = true },
            scratch = { enabled = true },
            statuscolumn = { enabled = true },
            terminal = { enabled = true },
            -- picker = { enabled = true },
        })
        vim.keymap.set('n', '<leader>/', function() Snacks.terminal.toggle() end, { desc = "Toggle terminal" })
        vim.keymap.set('n', "<leader>..",  function() Snacks.scratch() end, {desc = "Toggle Scratch Buffer"})
        vim.keymap.set('n', "<leader>.s",  function() Snacks.scratch.select() end, {desc = "Select Scratch Buffer"})
        -- vim.keymap.set('n', '<leader>ff', function() Snacks.picker.smart() end, { desc = "Smart Find Files" })
    end,
}
