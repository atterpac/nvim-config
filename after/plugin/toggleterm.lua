
local Terminal = require('toggleterm.terminal').Terminal
local nu = Terminal:new({cmd = "nu", hidden = true})

function _nu_toggle()
	nu:toggle()
end


vim.keymap.set("n", '<leader>\\', '<cmd>lua _nu_toggle()<CR>')
vim.keymap.set("t", '<leader>\\', '<cmd>lua _nu_toggle()<CR>')

