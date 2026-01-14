local M = {}

function M.setup()
  vim.api.nvim_create_user_command("EchoMode",
    function()
      local bufnr = vim.api.nvim_get_current_buf()
      print("Current buffer filetype is: " .. vim.bo[bufnr].filetype .. " in mode " .. vim.fn.mode())
    end,
    { nargs = 0 }
  )
end

return M
