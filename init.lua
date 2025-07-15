require("config.lazy")
require("nvim-options")
-- Telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n','<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Treesitter keybinds


vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

-- LSPConfig Keybindings
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})

vim.keymap.set('i', '<C-[>', '<ESC>', {}) 

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    source = "always", -- shows "eslint", "lua_ls", etc.
    border = "rounded",
  },
})


