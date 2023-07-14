local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules", "build", "dist", "*.lock", ".rustup", ".cache", ".cargo", ".mozilla", ".local", ".pki", 'go/pkg'
        }},
    extensions = {
        file_browser = {
            theme="ivy",
            hijack_netrw = true,
        },
	pickers = {
		find_files = {
            hidden=true
		}
	}
}
}
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>pfh', "Telescope find_files hidden=true<CR>" )
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.api.nvim_set_keymap(
   "n",
   "<space>ff",
   "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>",
   {noremap = true}
)
