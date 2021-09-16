set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                                           " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number relativenumber                             " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set autochdir                           " Your working directory will always be the same as your working directory
set spelllang=es,en

"if !exists("g:syntax_on")
"    syntax enable
"endif
 
let g:mapleader = " "


" You can't stop me

call plug#begin("~/.config/nvim/upload/plugged")

Plug 'morhetz/gruvbox'
Plug 'zchee/deoplete-jedi'
Plug 'sheerun/vim-polyglot'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary', {'for': ['sh', 'python', 'markdown']}
Plug 'ironcamel/vim-script-runner', {'for': ['sh', 'python']}
Plug 'SirVer/ultisnips', {'for': ['sh', 'python', 'markdown']}
Plug 'honza/vim-snippets', {'for': ['sh', 'python', 'markdown']}
Plug 'vim-syntastic/syntastic', {'for': 'python'}
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'  " Fuente general de auto completado
Plug 'rhysd/vim-grammarous'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'

call plug#end()

colorscheme gruvbox

"""""""""""""""  MAPPING  """""""""""""""
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

"Tabs

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

"" Autocompletado

" Activar deoplete al iniciar Neovim
let g:deoplete#enable_at_startup = 1

" Cerrar automaticamente la ventana de vista previa (donde se muestra documentación, si existe)
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END


""" split horizontal y vertical
map <leader>h :split<CR>
map <leader>v :vsplit<CR>

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
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>


"cerrar aotocompletación
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let $my_vimrc = $localappdata.'~/.config/nvim/init.vim'
nnoremap <leader>o :source $my_vimrc<cr>

"------------- Autocmpletado
"let g:jedi#auto_initialization = 0
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#use_tabs_not_buffers =1
"let g:jedi#use_splits_not_buffers = "left"
"let g:jedi#environment_path = "venv"
"let g:jedi#completions_enabled = 0

"Open terminal---------------------------------------

