--% markdown
-- # nvim-cmp
-- Most of the configuration is taken from the projects github.
--
--% lua
local cmp = require'cmp'

cmp.setup({
	snippet = {
    	expand = function(args)
    	vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    	end,
  	},
    --% markdown
    -- ## Mappings
    --
    --% lua
  	mapping = {
		['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
  		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
		['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true
        }),

        --% markdown
        -- Making tab-autocomplete more useful
        --
        --% lua
		["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
		["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' })
  	},
    --% markdown
    -- ## Setting the completion sources
    --
    --% lua
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' },
		{ name = 'cmp_tabnine' },
	}, 
	{
	{ name = 'buffer' },
	})
})

--% markdown
-- ## Overwriting native windows
--
-- Setting autocomplete for search
--
-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
--
--% lua
cmp.setup.cmdline('/', {
	sources = {
		{ name = 'buffer' }
	}
})

--% markdown
-- Setting autocomplete for commands
--
-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
--
--% lua
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})

--% markdown
-- ## Language server setup
--
--% lua
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.pyright.setup{
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            }
        }
    },
    single_file_support = true
}
require'lspconfig'.rust_analyzer.setup{}

--% markdown
-- ### Setting up the lua language server
-- Somehow the lua language server is harder to setup then the others

--% lua
local sumneko_root_path = os.getenv( "HOME" )..'/Projects/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/Linux/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
