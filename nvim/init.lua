if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

vim.cmd([[
  packadd packer.nvim
]])

local packer = require("packer")
packer.startup(function()
	-- Prisma Syntax Highlighting
	use("pantharshit00/vim-prisma")
	-- Add other plugins if needed
end)

require("config.lazy")
