require('Comment').setup()

local function toggle_comment_visual()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Plug>(comment_toggle_linewise_visual)', true, true, true), 'x', true)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('gv', true, false, true), 'x', true)
end

vim.keymap.set('n', '<C-_>', '<Plug>(comment_toggle_linewise_current)', {})
vim.keymap.set('v', '<C-_>', toggle_comment_visual, {})

