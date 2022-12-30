local floaterm = require('vim-floaterm')

floaterm.setup(){
  if vim.g.is_win then
    vim.g.floaterm_shell = "pwsh"
  end
}
