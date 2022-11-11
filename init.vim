set mouse=a  " enable mouse
set encoding=utf-8 "encoding
set number "number strings
set noswapfile "dont create swap files
set scrolloff=7
set hlsearch "Hilights resaults of search

"TABS
"Переменная expandtab включает замену табов на пробелы, tabstop - количество пробелов в одном обычном табе, softtabstop - количество пробелов в табе при удалении, smarttab - при нажатии таба в начале строки добавляет количество пробелов равное shiftwidth
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4


" Scary Settings
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

call plug#begin('~/.vim/plugged')

" THEMES
Plug 'navarasu/onedark.nvim'

"DEBUGGER
Plug 'puremourning/vimspector'

" MAKING IDE Lite
Plug 'https://github.com/preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'

call plug#end()


" TAGBAR
" Автостарт плагина для некоторых типов файло<F6>
autocmd VimEnter *.py,*.pl,*.js,*.php,*.cpp,*.java TagbarToggle  
" Компактный вид у тагбара     
let g:tagbar_compact = 1  
" Отк. сортировка по имени у тагбара (мне хронология важнее) 
let g:tagbar_sort = 0 

" NERD TREE

" Показывать скрытые файлы и папки в NERDTree  
let NERDTreeShowHidden = 1
" F6 для запуска и свертывания
noremap <S-l> :NERDTreeRefreshRoot<CR> :NERDTreeToggle<CR>

" COLORSCHEME
let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark

"some debugger shif
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval


let g:vimspector_enable_mappings = 'HUMAN'
