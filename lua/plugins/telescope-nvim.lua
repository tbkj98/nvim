-- Fuzzy finder
return {
  -- https://github.com/nvim-telescope/telescope.nvim
  'nvim-telescope/telescope.nvim',
  lazy = true,
  dependencies = {
    -- https://github.com/nvim-lua/plenary.nvim
    { 'nvim-lua/plenary.nvim' },
    {
      -- https://github.com/nvim-telescope/telescope-fzf-native.nvim
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    {
      'nvim-telescope/telescope-ui-select.nvim'
    }
  },
  opts = {
    defaults = {
      layout_config = {
        vertical = {
          width = 0.75
        }
      },
      path_display = {
        filename_first = {
          reverse_directories = true
        }
      },
      file_ignore_patterns = {
        "node_modules/",
        ".*.class",
        ".gradle/",
        "gradle/",
        "build/",
        ".settings/",
        ".git/",
        ".factorypath",
        ".project",
        ".classpath",
        "dist",
      }
    },
    pickers = {
      find_files = {
        hidden = true,
      }
    },
  }
}
