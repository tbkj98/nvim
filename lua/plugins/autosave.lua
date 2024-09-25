return {
  'Pocco81/auto-save.nvim',
  config = true,
  opts = {
    enabled = true,
    condition = function(buf)
      local fn = vim.fn
      local utils = require("auto-save.utils.data")


      -- If the buffer is not modifiable, don't auto-save
      if fn.getbufvar(buf, "&modifiable") == 0 then return false end

      -- Checking if the type is auto savable
      -- buffer types or file types which shouldn't be auto-saved
      local types = { "oil" }
      return utils.not_in(fn.getbufvar(buf, "&filetype"), types)
    end,
  }
}
