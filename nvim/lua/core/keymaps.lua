local keymap = vim.keymap.set
local nnoremap = { noremap = true }

-- Session control
keymap('n', '<leader>zl', '<cmd>source Session.vim<CR>')
keymap('n', '<leader>zL', ':mksession')

-- Default leader '\'
keymap('n', '<leader>g', '<cmd>Git<CR><cmd>on<CR>')
keymap('n', '<leader>l', '<cmd>Lines<CR>')
keymap('n', '<leader>f', '<cmd>Files<CR>')
keymap('n', '<leader>m', '<cmd>Marks<CR>')
keymap('n', '<leader>h', '<cmd>Helptags<CR>')
keymap('n', '<leader>b', '<cmd>Buffers<CR>')

-- Tabs
keymap('n', '<leader>tn', '<cmd>tabnew<CR>')
keymap('n', '<leader>tc', '<cmd>tabclose<CR>')
keymap('n', '<leader>tm', ':tabmove')
keymap('n', '<leader>tf', '<cmd>tabmove0<CR>')
keymap('n', '<leader>tl', '<cmd>tabmove$<CR>')

-- Spellcheck
keymap('n', '<leader>se', '<cmd>setlocal spell<CR>')
keymap('n', '<leader>sd', '<cmd>setlocal nospell<CR>')

keymap('n', '<A-2>', '<cmd>HexokinaseToggle<CR>')

-- Unbind arrows
keymap('n', '<Up>', '<Nop>')
keymap('n', '<Down>', '<Nop>')
keymap('n', '<Left>', '<Nop>')
keymap('n', '<Right>', '<Nop>')
