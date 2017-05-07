" => Text <= ==========================================
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

" => Appearance <= ====================================
set nu

" Enable syntax highlighting
syntax on
" Enable highlight on search pattern
set hlsearch

" everything is javascript for me
au BufNewFile,BufRead *.ts set filetype=javascript
au BufNewFile,BufRead *.swift set filetype=javascript
au BufNewFile,BufRead *.sketchplugin set filetype=javascript

colorscheme mango

set background=dark

" => VIM <= ===========================================
set noswapfile

" russian lang in normal mode
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" => netrw <===========================================

" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir='rm -r'
