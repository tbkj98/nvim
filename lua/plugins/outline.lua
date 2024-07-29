return {
  "simrat39/symbols-outline.nvim",
  config = function ()
    require("symbols-outline").setup()

    local set_keymap = vim.keymap.set
    set_keymap('n', '<leader>oo', '<Cmd>SymbolsOutline<CR>', { desc = "Toggle symbol outline" })

  end
}
