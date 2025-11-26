return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config('*', {
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
    		opts = {
        		ensure_installed = { "lua_ls", "gopls" },
    		},
    		dependencies = {
        		{
				"mason-org/mason.nvim", opts = {}
			},
        		"neovim/nvim-lspconfig",
    		},
	},
	  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  { -- optional blink completion source for require statements and module annotations
    "saghen/blink.cmp",
    opts = {
	keymap = {
		preset = "enter",
	},
      sources = {
        default = { "lazydev", "lsp", "path", "snippets", "buffer" },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          },
        },
      },
    },
  }
}
