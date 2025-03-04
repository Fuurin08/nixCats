return {
    {
        "yazi.nvim",
        event = { "DeferredUIEnter" },
        after = function (plugin)
            require("yazi").setup({
                
            })
        end
    }
};