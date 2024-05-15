require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- colorschemes
  -- 'matsuuu/pinkmare',
  -- 'shaunsingh/doom-vibrant.nvim',
  -- require 'colorschemes/tokyonight',
  require 'colorschemes/catppuccin',

  require 'plugins/gitsigns',

  require 'plugins/which-key',

  require 'plugins/telescope',

  require 'plugins/lspconfig',

  require 'plugins/conform',

  require 'plugins/cmp',

  require 'plugins/todo-comments',

  require 'plugins/mini',

  require 'plugins/treesitter',

  require 'plugins/autopairs',

  require 'plugins/flash',

  require 'plugins/neogit',

  require 'plugins/trouble',

  require 'plugins/dadbod',

  require 'plugins/tardis',
  -- require 'plugins.debug',
  -- require 'plugins.indent_line',
  -- require 'plugins.lint',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
  dev = {
    path = '~/repos',
  },
})

-- vim: ts=2 sts=2 sw=2 et
