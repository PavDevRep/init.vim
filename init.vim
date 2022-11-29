call plug#begin('~/.vim/plugged')

" THEMES
Plug 'navarasu/onedark.nvim'

"DEBUGGER
Plug 'puremourning/vimspector'

" NERDTREE
Plug 'preservim/nerdtree'

" COOL LINE
Plug 'itchyny/lightline.vim'

" TAGBAR
Plug 'preservim/tagbar'

" NERD COMMENTS
Plug 'preservim/nerdcommenter'

call plug#end()



"###
"SETS
"###

" enable syntax
syntax on

" theme
colorscheme onedark

" line wrap
set wrap
set linebreak

" enable mouse
set mouse=a  

"encoding UTF-8
set encoding=utf-8

"number strings
set number

"dont create swap files
set noswapfile

"Hilights resaults of search
set hlsearch 


" Disable backup files
set nobackup
set nowritebackup


" tabbing, using 4 spaces instead of \t
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

"###
"LETS
"###

" nerd tree

" Показывать скрытые файлы и папки в NERDTree  
let NERDTreeShowHidden = 1

" nerd coments

" Убираем стандартные сочетания клавиш
let g:NERDCreateDefaultMappings = 0

" Добавляем пробел после комментария
let g:NERDSpaceDelims = 1

" Используем компактный синтаксис
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Разрешаем комментировать пустые строки
let g:NERDCommentEmptyLines = 1

" Эта настройка будет удалять лишние пробелы после крайнего
" непробельного символа в строке после раскомментирования
" Лучше выключить, потому что эта Vim конфигурация и так сама
" чистит файл (см. функция на ~528 строке)
let g:NERDTrimTrailingWhitespace = 0

" Разрешаем проверку на то, закомментирована строка или нет
let g:NERDToggleCheckAllLines = 1









" light line
let g:lightline = {'colorscheme': 'dark'}

"###
"REMAPS
"###



" save file
nnoremap <C-s> :w<CR>


" fast exiting vim
nnoremap <C-c> :q<CR>

" Scary Settings
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>


" CTRL + L to open nerdTREE
noremap <C-l> :NERDTreeRefreshRoot<CR> :NERDTreeToggle<CR>

" nerd comment

" Комментировать и раскомментировать строку
" в режиме NORMAL по нажатию Ctrl+/
nmap <C-_> <Plug>NERDCommenterToggle

" Аналогично, но для режима VISUAL
vmap <C-_> <Plug>NERDCommenterToggle<CR>g

" open terminal by ctr + q
nnoremap <C-q> :terminal<CR>
