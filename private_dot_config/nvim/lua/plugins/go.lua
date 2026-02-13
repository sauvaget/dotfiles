return {
	-- Import the official Go Extra automatically
	{ import = "lazyvim.plugins.extras.lang.go" },

	-- Customize gopls behavior
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				gopls = {
					settings = {
						gopls = {
							hints = {
								assignVariableTypes = true,
								compositeLiteralFields = true,
								parameterNames = true,
							},
							analyses = {
								unusedparams = true,
							},
							staticcheck = true,
						},
					},
				},
			},
		},
	},
}
