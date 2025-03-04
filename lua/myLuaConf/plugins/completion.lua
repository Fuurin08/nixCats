local function faster_get_path(name)
	local path = vim.tbl_get(package.loaded, "nixCats", "pawsible", "allPlugins", "opt", name)
	if path then
	  vim.cmd.packadd(name)
	  return path
	end
	return nil -- nil will make it default to normal behavior
  end
  
  ---packadd + after/plugin
  ---@type fun(names: string[]|string)
  local load_w_after_plugin = require('lzextras').make_load_with_afters({ "plugin" }, faster_get_path)
  
  -- NOTE: packadd doesnt load after directories.
  -- hence, the above function that you can get from luaUtils that exists to make that easy.

return {
	{
		"blink.cmp",
		for_cat = "general.cmp",
		-- cmd = { "" },
		event = { "DeferredUIEnter" },
		-- ft = "",
		-- keys = "",
		-- colorscheme = "",
		on_require = { "cmp" },
		after = function(plugin)
			require("blink.cmp").setup({
				completion = {
					keyword = { range = 'full' },
					trigger = { show_on_trigger_character = true },
					list = { selection = { preselect = true, auto_insert = true } },
					menu = {
						border = "rounded",
					},
					-- menu.draw.columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
					documentation = {
						auto_show = true,
						auto_show_delay_ms = 500,
						window = {
							border = "rounded",
						},
					},
					ghost_text = { enabled = true },
				},
				keymap = {
					preset = 'super-tab'
				},
				sources = {
					default = { 'lsp', 'path', 'snippets', 'buffer' },
				},
				fuzzy = {
					implementation = "prefer_rust",
					prebuilt_binaries = { download = false },
				},
			})
		end,
	},
}
