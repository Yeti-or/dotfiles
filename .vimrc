"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For ubuntu
set encoding=utf8

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors, text  and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

au BufNewFile,BufRead *.js setf javascript
au BufNewFile,BufRead *.swift setf javascript
au BufNewFile,BufRead *.sketchplugin setf javascript
au BufNewFile,BufRead *.bemhtml setf javascript
au BufNewFile,BufRead *.xjst setf javascript
au BufNewFile,BufRead *.less setf css

colorscheme desert
set background=dark

"Set line numbers"
set nu
