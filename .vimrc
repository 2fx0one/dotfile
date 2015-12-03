""""""""""""""""""""Vundle"""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rking/ag.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
""""""""""""""""""""Vundle"""""""""""""""""""""""""""

syntax on
set nu "number
set sc "showcmd
set is "incsearch search as entered
set hlsearch            " highlight matches

set cursorline "highlight current line
set cursorcolumn " cloumn cursor
"设定高亮列的颜色为：
"hi CursorLine cterm=NONE ctermbg=gray guibg=NONE guifg=NONEp
"hi CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"hi CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

set wildmenu "visual autocomplete for command menu
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]

set softtabstop=4
set ts=4  " number of visual spaces per TAB
set sw=4 " number of spaces in tab when editing
set expandtab " tabs are spaces

set autoindent
set cindent
set title
set autoread

set ruler

filetype indent on 
filetype on "enables filetype detection
filetype plugin on  "enables filetype specific plugins
set nobackup
set nowb
set noswapfile

"let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"let Tlist_Use_Right_Window=1

"set background=light
"set background=dark
"colorscheme solarized
"set t_Co=256

let mapleader=","
let g:mapleader=","

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>zz :wqa<cr>
map <leader>w :w<cr>

map <space> /
map <C-space> ?

map j gj
map k gk

"buffer
map <leader>n :bn<cr> 
map <F6> :bn<cr>
map <leader>p :bp<cr>
map <F5> :bp<cr>

map <leader>e :NERDTreeToggle<cr>
map <F7> :NERDTreeToggle<cr>
map <leader>t :TagbarToggle<cr>
map <F8> :TagbarToggle<cr>

"nmap <C-tab> :tabnext <cr>
"map <leader>tabn :tabnew<cr>
"map <leader>tabo :tabonly<cr>
"map <leader>tabc :tabclose<cr>
"map <leader>tabm :tabmove <cr>
"map <leader>t :tabnext <cr>


autocmd FileType make set noexpandtab
autocmd FileType python set nocindent
autocmd FileType sh set nocindent
autocmd FileType expect set nocindent

if has("autocmd")
	" In text files, always limit the width of text to 78 characters
	autocmd BufRead *.txt set tw=78
	" When editing a file, always jump to the last cursor position
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\   exe "normal! $'\"" |
	\ endif
endif

"bash
let g:BASH_AuthorName = 'kelvin'
let g:BASH_Email = 'wangkun@yh.cn'
let g:BASH_Company = 'YinHan'

"ag
map <leader>a :Ag<space>
let g:ag_working_path_mode='r'

" ctrlP
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0 " always open files in new buffers
let g:ctrlp_working_path_mode=''
let g:ctrlp_user_command = 'ag %s -l -nocolor --hidden -g ""'
