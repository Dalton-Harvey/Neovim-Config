-- NeoVim keybinds
vim.keymap.set('i', '<C-[>', '<ESC>', {})


-- Telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n','<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Neotree keybinds
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

-- LSPConfig Keybindings
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})

-- Null_ls Keybindings
vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})



