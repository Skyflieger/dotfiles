return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({
  		extensions = {
    			workspaces = {
      				keep_insert = true,
      				path_hl = "String"
    			}
  		}
	})

        local builtin = require('telescope.builtin')
	local telescope = require('telescope')
        vim.keymap.set('n', '<leader>f', builtin.find_files, {})

        vim.keymap.set('n', '<leader>p', telescope.extensions.workspaces.workspaces, {})
	end
}

