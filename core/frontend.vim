" settings for different neovim front end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             config for neovide                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists("g:neovide")
  set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h20
  let g:neovide_transparency = 0.8
  let g:neovide_cursor_animation_length = 0.1
  let g:neovide_cursor_trail_size=0.3
  let g:neovide_cursor_vfx_mode = ""
  let g:neovide_cursor_vfx_particle_density=10.0
  let g:neovide_cursor_vfx_opacity=150.0
  " let g:neovide_transparency = 0.8
  let g:neovide_fullscreen = v:false
  " let g:neovide_scroll_animation_length = 0.3
  " let g:neovide_hide_mouse_when_typing = v:false
  let g:neovide_floating_blur_amount_x = 2.0
  let g:neovide_floating_blur_amount_y = 2.0
  let g:neovide_profiler = v:false
  let g:neovide_cursor_vfx_mode = "railgun"
  set autochdir
  " let g:neovide_refresh_rate = 60
  " let g:neovide_input_macos_alt_is_meta = v:false

  " keymap.set("n", "<D-z>", ":FloatermToggle!<CR>")
  " keymap.set("t", "<D-z>", "<C-\\><C-n>:FloatermToggle<CR>")
  " keymap.set("c", "<D-z>", "<Esc>:FloatermToggle!<CR>")
  " keymap.set("i", "<D-z>", "<Esc><C-\\><C-n>:FloatermToggle!<CR>")
  " keymap.set("v", "<D-z>", "<Esc>:FloatermToggle!<CR>")
  " keymap.set("n", "<D-z>", ":FloatermToggle!<CR>")
  " keymap.set("t", "<D-z>", "<C-\\><C-n>:FloatermToggle<CR>")

endif

if exists("g:nvy")
  set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h12
endif

if exists("g:vscode")
  set cmdheight=10 " avoid neovim print message to vscode output panel
  nnoremap gr :call VSCodeCall("editor.action.referenceSearch.trigger")<CR>
  " nnoremap j :call VSCodeCall("cursorDown")<CR>
  " nnoremap k :call VSCodeCall("cursorUp")<CR>
  nnoremap <ctrl-,> :call VSCodeCall("workbench.action.openSettings")<CR>
  nnoremap <ctrl-o> :call VSCodeCall("workbench.action.files.openFile")<CR>
  nnoremap <alt-c> :Commentary<CR>
  nnoremap <leader>sv :call VSCodeCall("workbench.action.selectTheme")<CR>
  nnoremap q :call VSCodeCall("workbench.action.files.save")<CR>
  nnoremap go :call VSCodeCall("editor.action.openLink")<CR>
  set syntax=off
  command Gitlog :call VSCodeNotify("git-graph.view")
  cnoreabbrev gitlog Gitlog
  cnoreabbrev gl Gitlog
  command Palette :call VSCodeNotify("workbench.action.showCommands")
  cnoreabbrev pa Palette
  " nnoremap j :call VSCodeNotify("cursorDown")<CR>
  " nnoremap k :call VSCodeNotify("cursorUp")<CR>
  " nnoremap j gj
  " nnoremap k gk

  " xmap <C-/> <Plug>VSCodeCommentarygv
  " nmap <C-/> <Plug>VSCodeCommentaryLinegv
  " nnoremap <alt-/> :call VSCodeCall("e)gvditor.action.commentLine")<CR>
  " nnoremap zM :call VSCodeNotify('editor.foldAll')<CR>
  " nnoremap zR :call VSCodeNotify('editor.unfoldAll')<CR>
  " nnoremap zc :call VSCodeNotify('editor.fold')<CR>
  " nnoremap zC :call VSCodeNotify('editor.foldRecursively')<CR>
  " nnoremap zo :call VSCodeNotify('editor.unfold')<CR>
  " nnoremap zO :call VSCodeNotify('editor.unfoldRecursively')<CR>
  " nnoremap za :call VSCodeNotify('editor.toggleFold')<CR>

  " function! MoveCursor(direction) abort
  "     if(reg_recording() == '' && reg_executing() == '')
  "         return 'g'.a:direction
  "     else
  "         return a:direction
  "     endif
  " endfunction

  " nmap <expr> j MoveCursor('j')
  " nmap <expr> k MoveCursor('k')

endif

