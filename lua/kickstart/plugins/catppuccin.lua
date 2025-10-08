return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,        -- Load before most plugins so it can affect theming
  lazy = false,           -- Make sure it loads during startup (important for colorschemes)
  config = function()
    -- OPTIONAL: Configure Catppuccin here before applying the colorscheme
    -- See all options: https://github.com/catppuccin/nvim#configuration
    require('catppuccin').setup {
      flavour = 'mocha',            -- latte, frappe, macchiato, mocha
      transparent_background = false,
      integrations = {
        treesitter = true,
        gitsigns = true,
        telescope = true,
        which_key = true,
        cmp = true,
        mini = true,
        native_lsp = {
          enabled = true,
          inlay_hints = { background = true },
        },
      },
    }

    -- Now actually apply the colorscheme (after plugin is loaded)
    vim.cmd.colorscheme 'catppuccin'
  end,
}
-- vim: ts=2 sts=2 sw=2 et
