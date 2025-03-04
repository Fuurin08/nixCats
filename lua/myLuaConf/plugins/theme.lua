return {
    "catppuccin-nvim",
    lazy = false,
    after = function()
        require("catppuccin").setup({
            flavour = "mocha",
            transparent_background = true, -- disables setting the background color.
        })
        vim.cmd.colorscheme "catppuccin"
    end
}
