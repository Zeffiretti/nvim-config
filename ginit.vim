" Fix key mapping issues for GUI
inoremap <silent> <S-Insert>  <C-R>+
cnoremap <S-Insert> <C-R>+
nnoremap <silent> <C-6> <C-^>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          config for nvim-qt                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To check if neovim-qt is running, use `exists('g:GuiLoaded')`,
" see https://github.com/equalsraf/neovim-qt/issues/219
if exists('g:GuiLoaded')
  " call GuiWindowMaximized(1)
  GuiTabline 0
  GuiPopupmenu 0
  GuiLinespace 2
  GuiFont! Hack\ NF:h10:l
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           config for fvim                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('g:fvim_loaded')
  set termguicolors
  colorscheme gruvbox8_hard
  set guifont=Hack\ NF:h13
  " Cursor tweaks
  FVimCursorSmoothMove v:true
  FVimCursorSmoothBlink v:true

  " Background composition, can be 'none', 'blur' or 'acrylic'
  FVimBackgroundComposition 'none'
  FVimBackgroundOpacity 1.0
  FVimBackgroundAltOpacity 1.0

  " Title bar tweaks (themed with colorscheme)
  FVimCustomTitleBar v:true

  " Debug UI overlay
  FVimDrawFPS v:false
  " Font debugging -- draw bounds around each glyph
  FVimFontDrawBounds v:false

  " Font tweaks
  FVimFontAntialias v:true
  FVimFontAutohint v:true
  FVimFontHintLevel 'full'
  FVimFontSubpixel v:true
  FVimFontLigature v:true
  " can be 'default', '14.0', '-1.0' etc.
  FVimFontLineHeight '+1'

  " Try to snap the fonts to the pixels, reduces blur
  " in some situations (e.g. 100% DPI).
  FVimFontAutoSnap v:true

  " Font weight tuning, possible values are 100..900
  FVimFontNormalWeight 100
  FVimFontBoldWeight 700

  FVimUIPopupMenu v:false
endif

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
    set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h10
endif
