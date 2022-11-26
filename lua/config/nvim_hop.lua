vim.cmd([[hi HopNextKey cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff]])
vim.cmd([[hi HopNextKey1 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff]])
vim.cmd([[hi HopNextKey2 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff]])

local keymap = vim.keymap
local hop = require("hop")
local directions = require('hop.hint').HintDirection
hop.setup {
  case_insensitive = true,
  char2_fallback_key = "<CR>",
  quit_key = "<Esc>",
}

keymap.set({ "n", "v", "o" }, "f", "", {
  silent = true,
  noremap = true,
  callback = function()
    hop.hint_char2()
  end,
  desc = "nvim-hop char2",
})
keymap.set({ "n", "v", "o" }, "m", "", {
  silent = true,
  noremap = true,
  callback = function()
    vim.cmd('.g/^$/normal )')
    hop.hint_words({direction=directions.AFTER_CURSOR})
  end,
  desc = "nvim-hop words after cursor",
})
keymap.set({ "n", "v", "o" }, "b", "", {
  silent = true,
  noremap = true,
  callback = function()
    vim.cmd('.g/^$/normal ()k$')
    hop.hint_words({direction=directions.BEFORE_CURSOR})
  end,
  desc = "nvim-hop words before cursor",
})

