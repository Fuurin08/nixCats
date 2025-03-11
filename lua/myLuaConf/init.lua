-- NOTE: various, non-plugin config
require("myLuaConf.options")

-- NOTE: register an extra lze handler with the spec_field 'for_cat'
-- that makes enabling an lze spec for a category slightly nicer
require("lze").register_handlers(require("nixCatsUtils.lzUtils").for_cat)

-- NOTE: general plugins
-- require("myLuaConf.plugins.lualine")

require("lze").load({
    { import = "myLuaConf.plugins.theme" },
    { import = "myLuaConf.plugins.snacks" },

    -- lazyload
	{ import = "myLuaConf.plugins.completion" },
    { import = "myLuaConf.plugins.fzf-lua" },
	{ import = "myLuaConf.plugins.lualine" },
	{ import = "myLuaConf.plugins.treesitter" },
    { import = "myLuaConf.plugins.startuptime" },
    { import = "myLuaConf.plugins.which-key" },
    { import = "myLuaConf.plugins.yazi" },
})
