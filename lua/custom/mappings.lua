local map = vim.keymap.set

local telescope = require 'telescope'
local telescope_builtin = require 'telescope.builtin'

-- Disable JKL default motion mappings
map({ 'n', 'v', 'x', 's' }, 'j', function()
  print 'nope'
end)
map({ 'n', 'v', 'x', 's' }, 'k', function()
  print 'nope'
end)
map({ 'n', 'v', 'x', 's' }, 'l', function()
  print 'nope'
end)

map('n', '<leader><cr>', function()
  vim.cmd [[so]]
  print 'sourced'
end)
map('n', '<leader>pv', ':Ex<cr>')

map('n', 'E', 'J')

map({ 'n', 'v', 'x', 's' }, 'j', 'e')
map({ 'n', 'v', 'x', 's' }, 'J', 'E')

map({ 'n', 'v', 'x', 's' }, 'k', 'n')
map({ 'n', 'v', 'x', 's' }, 'K', 'N')

map('i', '<c-n>', '<down>')
map('i', '<c-l>', '<up>')
map('i', '<c-e>', '<right>')

map({ 'n', 'v', 'x', 's' }, 'h', '<left>')
map({ 'n', 'v', 'x', 's' }, 'n', '<down>')
map({ 'n', 'v', 'x', 's' }, 'l', '<up>')
map({ 'n', 'v', 'x', 's' }, 'e', '<right>')

map({ 'n', 'v', 'x' }, '<c-n>', '<c-w>j')
map({ 'n', 'v', 'x' }, '<c-l>', '<c-w>k')
map({ 'n', 'v', 'x' }, '<c-e>', '<c-w>l')

map('o', 'n', 'j')
map('o', 'l', 'k')
map('o', 'e', 'l')

map('o', 'J', 'J')
map('o', 'j', 'j')
map('o', 'K', 'N')
map('o', 'k', 'n')

map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-n>', '<C-w><C-j>', { desc = 'Move focus to the lowe window' })
map('n', '<C-l>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
map('n', '<C-e>', '<C-w><C-l>', { desc = 'Move focus to the right window' })

map('n', '<leader>ff', function()
  telescope_builtin.find_files()
end)
map('n', '<leader>fb', function()
  telescope_builtin.buffers()
end)
map('n', '<leader>fw', function()
  telescope_builtin.live_grep()
end)
map('n', '<leader>fz', function()
  telescope_builtin.current_buffer_fuzzy_find()
end)

map('n', '<leader>/', ":Commentary<cr>")
map('v', '<leader>/', ":'<,'>Commentary<cr>")

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ['<C-l>'] = 'move_selection_previous',
        ['<C-n>'] = 'move_selection_next',
      },
      n = {
        ['l'] = 'move_selection_previous',
        ['n'] = 'move_selection_next',
      },
    },
  },
}
