" settings for different neovim front end
if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h14
    " let g:neovide_transparency = 0.8
    let g:neovide_fullscreen = v:false
    " let g:neovide_scroll_animation_length = 0.3
    " let g:neovide_hide_mouse_when_typing = v:false
    let g:neovide_floating_blur_amount_x = 2.0
    let g:neovide_floating_blur_amount_y = 2.0
    let g:neovide_profiler = v:false
    let g:neovide_cursor_vfx_mode = "railgun"
    " let g:neovide_refresh_rate = 60
endif
if exists("g:nvy")
    set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h14
endif
