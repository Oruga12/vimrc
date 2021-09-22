set mouse=a
"syntax on
" set autoindent
set relativenumber
set encoding=utf-8   

set ruler
    
" Tab Settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set clipboard=unnamedplus
set guioptions+=a
" Lenguaje Español
set spelllang=es,en

"set split
set splitbelow 
set splitright

" Tecla principal
let g:mapleader = " "

"Color
"set background=dark

"-------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required
"-------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'tc50cal/vim-terminal'
Plug 'ryanoasis/vim-devicons'
Plug 'ironcamel/vim-script-runner'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-syntastic/syntastic'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'rstacruz/sparkup'
Plug 'davidhalter/jedi-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'ap/vim-css-color'
call plug#end()            " required

filetype plugin indent on   
colorscheme dracula

"----- Plug 'tpope/vim-surround' -------
"con la convinación de teclas cs + caracter que quiere cambiar por el remplazo
"y se cambia 
"-------- Auto completado------
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_python_binary_path='/usr/bin/python3'

"-----------------------------------------------------
"""""""""""""""  MAPPING  """""""""""""""
"----------------------------------------------------

"------ Comenta lineas de código ----------------
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

"Tamaño de las ventanas
nnoremap <leader><right> :vertical resize +5<CR>
nnoremap <leader><left> :vertical resize -5<CR>
nnoremap <leader><up> :resize -5<CR>
nnoremap <leader><down> :resize -5<CR>

""Buscar archivos
" Ejecutar comandos con alt-enter :Commands
let g:fzf_commands_expect = 'alt-enter'
" Guardar historial de búsquedas
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Empezar a buscar presionando Ctrl + p
nnoremap <C-s> :Files<CR>

""" Corrector Ortografico
nnoremap <leader><F5> :set spell<CR>
noremap <leader>c :GrammarousCheck --lang=es<CR>
noremap <leader>cc :GrammarousReset

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>

" Movernos entre ventanas 
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

nnoremap <leader><F5> :set spell<CR>
nnoremap <leader>w :w <CR>

""" split vertical
"divide la terminal en vertical para movernos es con ctrl + w +w
vnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>

vnoremap <c-y> :vsplit<CR>:ter<CR>:resize 15<CR>
nnoremap <c-y> :vsplit<CR>:ter<CR>:resize 15<CR>
"colocar una guia de lineas al codigo
let g:identLine_setColors = 0
let g:indenne_char_list = ['¦', '┆', '┊']

" Navegar 
nnoremap <leader>z :NERDTree<CR>    
nnoremap <leader>q :NERDTree<CR>
"para crear files o directorios press <leader>m
" Guarda el archivo sin salir
nnoremap <leader>w :w <CR>

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>
"----------------------------------------------------
