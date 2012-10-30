color fingerpaint
set hidden
set guioptions=aAce
set gfn=DejaVu\ Sans\ Mono:h16
set t_Co=256

" Invisibles
set listchars=tab:▸\ ,eol:¬

" Powerline Settings
let g:Powerline_symbols = 'fancy'
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h16

" Folding Settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Commands
command! HexHighlight :call HexHighlight()
command! SyntaxAttr :call SyntaxAttr()

" Sounds
set visualbell t_vb=

" NERDTree
set autochdir
let NERDTreeChDirMode=1
