return {
	{
		"telescope.nvim",
		for_cat = "general.telescope",
		cmd = { "Telescope" },
		-- event = "",
		on_require = { "telescope" },
		-- ft = "",
		keys = {
			{
				"<leader>sm",
				"<cmd>Telescope notify<CR>",
				mode = { "n" },
				desc = "[S]earch [M]essage",
			},
			{
				"<leader>sb",
				function()
					return require("telescope.builtin").buffers()
				end,
				mode = { "n" },
				desc = "[ ] Find existing buffers",
			},
			{
				"<leader>s.",
				function()
					return require("telescope.builtin").oldfiles()
				end,
				mode = { "n" },
				desc = '[S]earch Recent Files ("." for repeat)',
			},
			{
				"<leader>sr",
				function()
					return require("telescope.builtin").resume()
				end,
				mode = { "n" },
				desc = "[S]earch [R]esume",
			},
			{
				"<leader>sd",
				function()
					return require("telescope.builtin").diagnostics()
				end,
				mode = { "n" },
				desc = "[S]earch [D]iagnostics",
			},
			{
				"<leader>sg",
				function()
					return require("telescope.builtin").live_grep()
				end,
				mode = { "n" },
				desc = "[S]earch by [G]rep",
			},
			{
				"<leader>sw",
				function()
					return require("telescope.builtin").grep_string()
				end,
				mode = { "n" },
				desc = "[S]earch current [W]ord",
			},
			{
				"<leader>ss",
				function()
					return require("telescope.builtin").builtin()
				end,
				mode = { "n" },
				desc = "[S]earch [S]elect Telescope",
			},
			{
				"<leader>sf",
				function()
					return require("telescope.builtin").find_files()
				end,
				mode = { "n" },
				desc = "[S]earch [F]iles",
			},
			{
				"<leader>sk",
				function()
					return require("telescope.builtin").keymaps()
				end,
				mode = { "n" },
				desc = "[S]earch [K]eymaps",
			},
			{
				"<leader>sh",
				function()
					return require("telescope.builtin").help_tags()
				end,
				mode = { "n" },
				desc = "[S]earch [H]elp",
			},
		},
		-- load
		after = function(plugin)
			require("telescope").setup({
				-- You can put your default mappings / updates / etc. in here
				--  All the info you're looking for is in `:help telescope.setup()`
				--
				defaults = {
					mappings = {
						i = { ["<c-enter>"] = "to_fuzzy_refine" },
					},
				},
				-- pickers = {}
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			})

			-- Enable telescope extensions, if they are installed
			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "ui-select")
		end,
	},
}
