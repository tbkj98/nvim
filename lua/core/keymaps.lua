local folderOfThisFile = (...):match("(.-)[^%.]+$")
-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and quit" })               -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "Quit without saving" })         -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save" })                         -- save
keymap.set("n", "gx", ":!open <c-r><c-a><CR>", { desc = "Open URL under cursor" }) -- open URL under cursor

-- Split window management
keymap.set("n", "<leader>swv", "<C-w>v", { desc = "Split window vertically" })         -- split window vertically
keymap.set("n", "<leader>swh", "<C-w>s", { desc = "Split window horizontally" })       -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split window equal width" })    -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close split window" })           -- close split window
keymap.set("n", "<leader>sj", "<C-w>-", { desc = "Make split window height shorter" }) -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+", { desc = "Make split window height taller" })  -- make split windows height taller
keymap.set("n", "<leader>sl", "<C-w>>5", { desc = "Make split window width bigger" })  -- make split windows width bigger
keymap.set("n", "<leader>sh", "<C-w><5", { desc = "Make split window width smaller" }) -- make split windows width smaller

-- Diff keymaps
keymap.set("n", "<leader>cc", ":diffput<CR>", { desc = "Put diff from current to other during diff" })  -- put diff from current to other during diff
keymap.set("n", "<leader>cj", ":diffget 1<CR>", { desc = "Get diff from left (local) during merge" })   -- get diff from left (local) during merge
keymap.set("n", "<leader>ck", ":diffget 3<CR>", { desc = "Get diff from right (remote) during merge" }) -- get diff from right (remote) during merge
keymap.set("n", "<leader>cn", "]c", { desc = "Next diff hunk" })                                        -- next diff hunk
keymap.set("n", "<leader>cp", "[c", { desc = "Previous diff hunk" })                                    -- previous diff hunk

-- Quickfix keymaps
keymap.set("n", "<leader>qo", ":copen<CR>", { desc = "Open quickfix list" })                  -- open quickfix list
keymap.set("n", "<leader>qf", ":cfirst<CR>", { desc = "Jump to first quickfix list item" })   -- jump to first quickfix list item
keymap.set("n", "<leader>qn", ":cnext<CR>", { desc = "Jump to next quickfix list item" })     -- jump to next quickfix list item
keymap.set("n", "<leader>qp", ":cprev<CR>", { desc = "Jump to previous quickfix list item" }) -- jump to prev quickfix list item
keymap.set("n", "<leader>ql", ":clast<CR>", { desc = "Jump to last quickfix list item" })     -- jump to last quickfix list item
keymap.set("n", "<leader>qc", ":cclose<CR>", { desc = "Close quickfix list" })                -- close quickfix list

-- Vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "Toggle maximize tab" }) -- toggle maximize tab

-- Nvim-tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })         -- toggle file explorer
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>", { desc = "Toggle focus to file explorer" }) -- toggle focus to file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { desc = "Find file in file explorer" }) -- find file in file explorer

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = "Find files" })
keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = "Live grep" })
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = "Find in buffers" })
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = "Find in help tags" })
keymap.set('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find,
  { desc = "Find(fuzzy) in current buffer" })
keymap.set('n', '<leader>fo', require('telescope.builtin').lsp_document_symbols, { desc = "Find in LSP document symbol" })
keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_incoming_calls, { desc = "Find in LSP incoming calls" })
keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({ default_text = ":method:" }) end)
keymap.set("n", '<leader>fd', function()
    require('telescope.builtin').diagnostics({ default_text = ":E:" })
  end,
  {
    desc = "Find in LSP diagnostics"
  }
)

-- Git-blame
keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>", { desc = "Toggle git blame" }) -- toggle git blame

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu)
keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end)
keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end)
keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end)
keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end)
keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(5) end)
keymap.set("n", "<leader>h6", function() require("harpoon.ui").nav_file(6) end)
keymap.set("n", "<leader>h7", function() require("harpoon.ui").nav_file(7) end)
keymap.set("n", "<leader>h8", function() require("harpoon.ui").nav_file(8) end)
keymap.set("n", "<leader>h9", function() require("harpoon.ui").nav_file(9) end)

-- LSP
keymap.set('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
keymap.set('n', '<leader>tr', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
keymap.set('i', '<C-Space>', '<cmd>lua vim.lsp.buf.completion()<CR>')

-- Filetype-specific keymaps (these can be done in the ftplugin directory instead if you prefer)
keymap.set("n", '<leader>go', require(folderOfThisFile .. 'utils').organize_imports, { desc = "Organize imports" })
keymap.set("n", '<leader>gf', function()
  local utils = require(folderOfThisFile .. 'utils')
  local non_formattable_file_types = { "oil" }
  local file_type = vim.bo.filetype

  if (utils.is_array_contains(non_formattable_file_types, file_type)) then return end

  -- Formatting includes Organizing Imports and General Formatting
  utils.organize_imports()
  vim.lsp.buf.format({ async = true })
end, { desc = "Organize imports" })

keymap.set("n", '<leader>gu', function()
  if vim.bo.filetype == 'java' then
    require('jdtls').update_projects_config();
  end
end, { desc = "Update project config" })

-- keymap.set("n", '<leader>tc', function()
--   if vim.bo.filetype == 'java' then
--     require('jdtls').test_class();
--   end
-- end, { desc = "Test current class" })

-- keymap.set("n", '<leader>tm', function()
--   if vim.bo.filetype == 'java' then
--     require('jdtls').test_nearest_method();
--   end
-- end, { desc = "Test nearest method" })

-- Debugging
keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
keymap.set("n", "<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
keymap.set("n", '<leader>br', "<cmd>lua require'dap'.clear_breakpoints()<cr>")
keymap.set("n", '<leader>ba', '<cmd>Telescope dap list_breakpoints<cr>')
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
keymap.set("n", '<leader>dd', function()
  require('dap').disconnect(); require('dapui').close();
end)
keymap.set("n", '<leader>dt', function()
  require('dap').terminate(); require('dapui').close();
end)
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = "Toggle debug REPL" })
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", { desc = "Run last debug session" })
keymap.set("n", '<leader>di', function() require "dap.ui.widgets".hover() end, { desc = "Hover debug widgets" })
keymap.set("n", '<leader>d?',
  function()
    local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes)
  end, { desc = "Show debug scopes" })
keymap.set("n", '<leader>df', '<cmd>Telescope dap frames<cr>', { desc = "Telescope dap frames" })
keymap.set("n", '<leader>dh', '<cmd>Telescope dap commands<cr>', { desc = "Telescope dap commands" })


-- Prefer h-j-k-l mode-agnostic means of switching windows
keymap.set('t', 'jj', '<C-\\><C-n>', { noremap = true })
keymap.set('t', '<M-h>', '<c-\\><c-n><c-w>h', { noremap = true })
keymap.set('t', '<M-j>', '<c-\\><c-n><c-w>j', { noremap = true })
keymap.set('t', '<M-k>', '<c-\\><c-n><c-w>k', { noremap = true })
keymap.set('t', '<M-l>', '<c-\\><c-n><c-w>l', { noremap = true })
keymap.set('i', '<M-h>', '<Esc><c-w>h', { noremap = true })
keymap.set('i', '<M-j>', '<Esc><c-w>j', { noremap = true })
keymap.set('i', '<M-k>', '<Esc><c-w>k', { noremap = true })
keymap.set('i', '<M-l>', '<Esc><c-w>l', { noremap = true })
keymap.set('v', '<M-h>', '<Esc><c-w>h', { noremap = true })
keymap.set('v', '<M-j>', '<Esc><c-w>j', { noremap = true })
keymap.set('v', '<M-k>', '<Esc><c-w>k', { noremap = true })
keymap.set('v', '<M-l>', '<Esc><c-w>l', { noremap = true })
keymap.set('n', '<M-h>', '<c-w>h', { noremap = true })
keymap.set('n', '<M-j>', '<c-w>j', { noremap = true })
keymap.set('n', '<M-k>', '<c-w>k', { noremap = true })
keymap.set('n', '<M-l>', '<c-w>l', { noremap = true })

-- AutoSession mappings
keymap.set('n', '<leader>ar', '<cmd>SessionRestore<cr>', { desc = 'Restore session' })
keymap.set('n', '<leader>as', '<cmd>SessionSave<cr>', { desc = 'Save session' })

-- Tabby keymappings
vim.api.nvim_set_keymap("n", "<leader>ta", ":$tabnew<CR>", { noremap = true, desc = "Add tab" })
vim.api.nvim_set_keymap("n", "<leader>tf", ":Tabby pick_window<CR>", { noremap = true, desc = "Search window" })
vim.api.nvim_set_keymap("n", "<leader>tx", ":tabclose<CR>", { noremap = true, desc = "Close tab" })
vim.api.nvim_set_keymap("n", "<leader>to", ":tabonly<CR>", { noremap = true, desc = "Close other tabs" })
vim.api.nvim_set_keymap('n', '<M-]>', 'gt', { silent = true, noremap = true, desc = "Next tab" })
vim.api.nvim_set_keymap('n', '<M-[>', 'gT', { silent = true, noremap = true, desc = "Previous tab" })
-- move current tab to previous position
vim.api.nvim_set_keymap("n", "<leader>tmp", ":-tabmove<CR>", { noremap = true })
-- move current tab to next position
vim.api.nvim_set_keymap("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true })
