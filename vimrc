set nocompatible " This must be first, because it changes other options

" source $HOME/.vim/plug.vim
"Place the following code in your .vimrc before plug#begin() call
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"Plug 'christoomey/vim-tmux-navigator'
Plug 'rhysd/clever-f.vim'

" Colorschemes
Plug 'tomasr/molokai'
"Plug 'altercation/vim-colors-solarized'

" Syntax
Plug 'tpope/vim-git', { 'for': 'git' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" Completion
Plug 'mattn/emmet-vim', { 'for': 'html' }

" Make % match xml tags
Plug 'vim-scripts/matchit.zip', { 'for': ['html', 'xml'] }

" Fancy statusline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Make tab handle all completions
Plug 'ervandew/supertab'

" Fuzzy file opener
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'

" Search files using Silver Searcher
Plug 'rking/ag.vim'

" Navigate files in a sidebar
Plug 'scrooloose/nerdtree'

Plug 'easymotion/vim-easymotion'
Plug 'posva/vim-vue'

" required!
filetype plugin indent on

call plug#end()


" Colorschemes
colorscheme molokai
"let g:molokai_original = 1
syntax enable              " This has to come after colorcolumn in order to draw it.
"set background=dark
"colorscheme solarized
"set t_Co=256                " enable 256 colors

set langmenu=en
let $LANG='en'
set encoding=utf-8

set nobackup
set nowb
set noswapfile

syntax on
set number ""showline numbers
set showcmd "" show command in bottom bar
set hlsearch ""highlight matcher

"set cursorline          " highlight current line
"set cursorcolumn " cloumn cursor
"设定高亮列的颜色为：
"hi CursorLine cterm=NONE ctermbg=gray guibg=NONE guifg=NONEp
"hi CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"hi CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

set wildmenu            "visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
"set showmatch           " highlight matching [{()}]

"set softtabstop=4
set ts=4  " number of visual spaces per TAB
set sw=4 " number of spaces in tab when editing
set expandtab " tabs are spaces

set autoindent
"set cindent
set title
set autoread

set ruler

filetype indent on      " load filetype-specific indent files
filetype on "enables filetype detection
filetype plugin on  "enables filetype specific plugins
set nobackup
set nowb
set noswapfile


let mapleader="\<Space>"
"let g:mapleader=","
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>zz :wqa<cr>
map <leader>w :w<cr>

map <leader>e :NERDTreeToggle<cr>
map <Tab> :b<space>
"map <space> /
"map <C-space> ?

map j gj
map k gk

"airline
let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'


" If we have The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --hidden --ignore "\.git$\|\.hg$\|\.svn|\.pyc$"'
    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

"ag
"need brew install ag
map <leader>a :Ag<space>
let g:ag_working_path_mode='r'

"========== easymotion/vim-easymotion  begin==================
let g:EasyMotion_smartcase = 1
map <Leader><Leader> <Plug>(easymotion-prefix)
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
"" JK motions: Line motions
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)
let guEasyMotion_smartcase = 1
"
"
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
"
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
"
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
"========= easymotion/vim-easymotion  end==================

" Ctrl-P
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|sass-cache|pip_download_cache|wheel_cache)$',
    \ 'file': '\v\.(png|jpg|jpeg|gif|DS_Store|pyc)$',
    \ 'link': '',
    \ }
let g:ctrlp_show_hidden = 1
let g:ctrlp_clear_cache_on_exit = 0
" Wait to update results (This should fix the fact that backspace is so slow)
let g:ctrlp_lazy_update = 1
" Show as many results as our screen will allow
let g:ctrlp_match_window = 'max:1000'
let g:ctrlp_match_window = 'bottom,order:ttb'

" ctrlp插件 Ctrlp-funky
" nnoremap fu :CtrlPFunky<space>
" narrow the list down with a word under cursor
" nnoremap fU :execute 'CtrlPFunky ' . expand('')
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']

" markdown
let g:vim_markdown_folding_disabled = 1

" Auto detect filetype
autocmd BufRead,BufNewFile *.md,*.markdown set filetype=markdown
autocmd BufRead,BufNewFile *.lytex set filetype=tex
autocmd BufRead,BufNewFile ~/dotfiles/ssh/config set filetype=sshconfig
autocmd BufRead,BufNewFile *.git/config,.gitconfig,.gitmodules,gitconfig set ft=gitconfig
autocmd BufNewFile,BufRead .eslintrc set filetype=javascript
autocmd BufNewFile,BufRead *.es6 set filetype=javascript
"autocmd BufRead,BufNewFile *.py setlocal foldmethod=indent
autocmd FileType make set noexpandtab
autocmd FileType python set nocindent
autocmd FileType sh set nocindent
autocmd FileType expect set nocindent
autocmd BufNewFile,BufRead *.html,*.htm,*.css,*.js set noexpandtab tabstop=2 shiftwidth=2
au BufRead,BufNewFile *.wpy setlocal filetype=vue.html.javascript.css

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

function! MakeSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:filename = b:sessiondir . '/session.vim'
  exe "mksession! " . b:filename
endfunction

function! LoadSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction
au VimEnter * nested :call LoadSession()
"au VimLeave * :call MakeSession()
"
" save session
nnoremap <leader>s :call MakeSession()<CR>
