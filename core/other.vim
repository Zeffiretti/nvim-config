" set vim background transprant
highlight NonText guibg=none
highlight Normal guibg=none

if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    set guifont=CaskaydiaCove\ Nerd\ Font\ Mono
    let g:neovide_transparency = 0.8
    let g:neovide_fullscreen = v:true
    let g:neovide_scroll_animation_length = 0.3
    let g:neovide_hide_mouse_when_typing = v:false
    nmap <C-/> :Commentary<CR>
    vmap <C-/> :Commentary<CR>
    imap <C-/> <Esc>:Commentary<CR>
endif
