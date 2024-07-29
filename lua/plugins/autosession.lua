return {
  {
    'rmagatti/auto-session',
    dependencies = {
      'nvim-telescope/telescope.nvim', -- Only needed if you want to use sesssion lens
    },
    lazy  = false,
    event = "VimEnter",
    config = function()
      require('auto-session').setup({
        auto_session_suppress_dirs = { '~/Downloads', '/' },
        log_level = "error",
        auto_session_enable_last_session = true,
        auto_session_root_dir = vim.fn.stdpath('data') .. "/sessions/",
        auto_session_enabled = true,
        auto_save_enabled = true,
        auto_session_create_enabled = true,
        auto_restore_enabled = true,
        auto_session_use_git_branch = nil,
        -- the configs below are lua only
        bypass_session_save_file_types = nil,
        post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
          require("lualine").refresh()     -- refresh lualine so the new session name is displayed in the status bar
        end,
      })
    end,
  },
}

