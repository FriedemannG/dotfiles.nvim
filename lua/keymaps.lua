vim.keymap.set('n', '<leader>tt', function()
  require('trouble').toggle()
end, { desc = '[T]rouble [T]oggle' })
vim.keymap.set('n', '<leader>tw', function()
  require('trouble').toggle 'workspace_diagnostics'
end, { desc = '[T]rouble [W]orkspace diagnostic' })
vim.keymap.set('n', '<leader>td', function()
  require('trouble').toggle 'document_diagnostics'
end, { desc = '[T]rouble [D]ocument diagnostic' })
vim.keymap.set('n', '<leader>tq', function()
  require('trouble').toggle 'quickfix'
end, { desc = '[T]rouble [Q]uickfix' })
vim.keymap.set('n', '<leader>tl', function()
  require('trouble').toggle 'loclist'
end, { desc = '[T]rouble [L]ocklist' })
vim.keymap.set('n', 'gR', function()
  require('trouble').toggle 'lsp_references'
end)
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>tn', function()
  -- jump to the next item, skipping the groups
  require('trouble').next { skip_groups = true, jump = true }
end, { desc = '[T]rouble [N]ext' })
vim.keymap.set('n', '<leader>tp', function()
  -- jump to the previous item, skipping the groups
  require('trouble').previous { skip_groups = true, jump = true }
end, { desc = '[T]rouble [P]revious' })
-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'open diagnostics list' })

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
