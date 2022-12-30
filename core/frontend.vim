" settings for different neovim front end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             config for neovide                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists("g:neovide")
  set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h14
  let g:neovide_transparency = 1.0
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
  " let g:neovide_refresh_rate = 60
endif
if exists("g:nvy")
  set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h12
endif
