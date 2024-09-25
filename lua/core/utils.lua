local is_js_ts_file     = function()
  return vim.bo.filetype == 'typescript' or vim.bo.filetype == 'javascript' or vim.bo.filetype == 'typescriptreact'
end

local organize_imports  = function()
  if vim.bo.filetype == 'java' then
    require('jdtls').organize_imports();
  elseif is_js_ts_file() then
    local command = { command = "_typescript.organizeImports", arguments = { vim.fn.expand("%:p") } }
    vim.lsp.buf.execute_command(command)
  end
end

local is_array_contains = function(array, value)
  local arr = array or {}

  for _, item in pairs(arr) do
    if (item == value) then return true end
  end

  return false
end

return {
  is_array_contains = is_array_contains,
  is_js_ts_file = is_js_ts_file,
  organize_imports = organize_imports,
}
