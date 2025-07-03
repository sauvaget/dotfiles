local lsp_format_grp = vim.api.nvim_create_augroup("LspFormatOnSave", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	group = lsp_format_grp,
	callback = function()
		vim.lsp.buf.format({
			async = false,
			filter = function(client)
				return client.name == "gopls"
			end,
		})
	end,
})
