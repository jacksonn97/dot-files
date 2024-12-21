local augroup = vim.api.nvim_create_augroup       -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd       -- Create autocommand
local command = vim.api.nvim_create_user_command  -- Create command
local keymap  = vim.keymap

-- Automatically reload config on save
autocmd('BufWritePost', {
    pattern = { '*/nvim/init.lua', '*/nvim/lua/core/*.lua' },
    command = 'source ~/.config/nvim/init.lua'
  })

-- Remove whitespace on save
autocmd('BufWritePre', {
    pattern = '',
    command = ':%s/\\s\\+$//e'
  })

-- Wrap/nowrap dependence of window size
autocmd('VimResized', {
    pattern = '',
    callback = function()
      if vim.fn.winwidth(0) <= 70 then vim.opt.wrap = false else vim.opt.wrap = true end
  end
})

-- Rust builds
augroup('rustBiulds', { clear = true })
autocmd('FileType', {
    group = 'rustBiulds',
    pattern = 'rust',
    callback = function()
      local nnoremap = { noremap = true }
      keymap.set('n', '<A-9>',      '<cmd>Cargo run<CR>',   nnoremap)
      keymap.set('n', '<A-0>',      '<cmd>Cargo check<CR>', nnoremap)
      keymap.set('n', '<A-->',      '<cmd>Cargo test<CR>',  nnoremap)
      keymap.set('n', '<A-e>',      '<cmd>Cargo doc<CR>',   nnoremap)
      keymap.set('n', '<leader>tt', '<cmd>RustTest<CR>',    nnoremap)
      -- command('RmDebug', '\'\<,\'/>s/\vdbg!\((.*)\)/\1/g', {})
    end
  })

------ Commands ------

command('Vimrc',    'e ~/.config/nvim/init.lua', {})
command('Swaycfg',  'e ~/.config/sway/config',   {})
command('Zshrc',    'e ~/.zshrc',                {})
command('ToTabs',   '%s/    /\t/g',              {})
command('ToSpaces', '%s/\t/    /g',              {})

