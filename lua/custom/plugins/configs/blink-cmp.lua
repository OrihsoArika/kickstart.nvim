require('blink.cmp.config').keymap = {
  preset = 'none',
  ['<tab>'] = { 'select_next', 'fallback' },
  ['<s-tab>'] = { 'select_prev', 'fallback' },
  ['<CR>'] = { 'accept', 'fallback' },
  ['<C-e>'] = { 'hide', 'fallback' },
  ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
  ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
  ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
  ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
}
