local keymap = vim.keymap

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Neotree
--keymap.set('n', '<C-t>', ':Neotree<CR>')

--Terminals
keymap.set('n', '<C-t>', ':terminal<CR>')
