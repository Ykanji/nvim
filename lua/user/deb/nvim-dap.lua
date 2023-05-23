require('dap-python').setup('/usr/sbin/python')
table.insert(require('dap').configurations.python, {
  type = 'python',
  request = 'launch',
  name = 'My custom launch configuration',
  program = '${file}',
  -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
})

local keymap = vim.keymap.set
keymap("n", "<leader>ui", "<cmd>lua require'dapui'.toggle()<CR>")
keymap("n", "<leader>n", "<cmd>lua require'dap'.continue()<CR>")
keymap("n", "<leader>so", "<cmd>lua require'dap'.step_over()<CR>")
keymap("n", "<leader>si", "<cmd>lua require'dap'.setp_into()<CR>")
keymap("n", "<leader>sO", "<cmd>lua require'dap'.setp_out()<CR>")
keymap("n", "<leader>b", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
keymap("n", "<leader>B", "<cmd>lua require'dap'.set_breakpoint()<CR>")
keymap("n", "<Leader>lp", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.open()<CR>")
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<CR>")
keymap({ "n", "v" }, "<leader>dh", "<cmd>lua require'dap'.hover()<CR>")
keymap({ "n", "v" }, "<leader>dp", "<cmd>lua require'dap'.preview()<CR>")
keymap("n", "<Leader>df", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.frames)
end)
keymap("n", "<Leader>ds", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end)
keymap("n", "<leader>tm", "<cmd>lua require'dap-python'.test_method()<CR>")
keymap("n", "<leader>tc", "<cmd>lua require'dap-python'.test_class()<CR>")
keymap("n", "<leader>ts", "<cmd>lua require'dap-python'.debug_selection()<CR>")
