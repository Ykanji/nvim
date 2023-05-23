require('dap-python').resolve_python = function()
  return '/usr/sbin/python'
end

local keymap = vim.keymap.set
keymap("n", "<leader>tm", "<cmd>require('dap-python').test_method()")
keymap("n", "<leader>tc", "<cmd>require('dap-python').test_class()")
keymap("v", "<leader>dc", "<cmd>require('dap-python').debug_selection()")

