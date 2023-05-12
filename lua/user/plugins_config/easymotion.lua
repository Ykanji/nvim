require("hop").setup({})
local opts = { noremap = true, silent = true }

-- Symbol
vim.keymap.set('', '<Leader>f', function()
  vim.cmd[[:HopChar1]]
end, {remap=true})

-- Word
vim.keymap.set('', '<Leader>w', function()
  vim.cmd[[:HopWord]]
end, {remap=true})

-- Start line
vim.keymap.set('', "<leader>i", function()
	vim.cmd([[:HopLineStart]])
end, opts)

-- Hyper line
vim.keymap.set("n", "vo", function()
	vim.cmd([[:HopLineStart]])
	vim.schedule(function()
		vim.cmd([[normal! o]])
		vim.cmd([[startinsert]])
	end)
end, opts)
vim.keymap.set("n", "<Leader>vo", function()
	vim.cmd([[:HopLineStart]])
	vim.schedule(function()
		vim.cmd([[normal! o]])
		vim.cmd([[normal! o]])
		vim.cmd([[startinsert]])
	end)
end, opts)

vim.keymap.set("n", "vO", function()
	vim.cmd([[:HopLineStart]])
	vim.schedule(function()
		vim.cmd([[normal! O]])
		vim.cmd([[normal! O]])
		vim.cmd([[startinsert]])
	end)
end, opts)
vim.keymap.set("n", "<Leader>vO", function()
	vim.cmd([[:HopLineStart]])
	vim.schedule(function()
		vim.cmd([[normal! O]])
		vim.cmd([[normal! O]])
		vim.cmd([[startinsert]])
	end)
end, opts)

-- Hyper Paste

vim.keymap.set("n", "vp", function()
	vim.cmd([[:HopLineStartMW]])
	vim.schedule(function()
		vim.cmd([[normal! p]]) --> paste
	end)
end, opts)
vim.keymap.set("n", "<Leader>vp", function()
	vim.cmd([[:HopLineStartMW]])
	vim.schedule(function()
		vim.cmd([[normal! o]]) --> make new line below target
		vim.cmd([[normal! o]]) --> make another new line below target
		vim.cmd([[normal! p]]) --> paste
	end)
end, opts)

vim.keymap.set("n", "vP", function()
	vim.cmd([[:HopLineStartMW]])
	vim.schedule(function()
		vim.cmd([[normal! P]]) --> paste
	end)
end, opts)
vim.keymap.set("n", "<Leader>vP", function()
	vim.cmd([[:HopLineStartMW]])
	vim.schedule(function()
		vim.cmd([[normal! O]])
		vim.cmd([[normal! P]])
	end)
end, opts)

-- Hop with Macros

vim.keymap.set("n", "vY", function()
	vim.cmd([[:HopLineStart]])
	vim.schedule(function()
		vim.cmd([[:normal @f]])
	end)
end, opts)
