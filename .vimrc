"""""""""""""""""""""""Vundle""""""""""""""""""""""
set nocompatible              " 去除VI一致性,必须
set backspace=indent,eol,start
filetype off                  " 必须

" nmap <leader><Space><Space> :%s/\s\+$//<cr>

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'rhysd/clever-f.vim'
Plugin 'rking/ag.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Bundle 'ervandew/supertab'
"Plugin 'vim-scripts/a.vim' ".h .c .cpp switch
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
""Plugin 'vim-scripts/matchit.zip'
Plugin 'kshenoy/vim-signature' "mark on column shortkey: m, ]` [`
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai'
Plugin 'chemzqm/wxapp.vim'


" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
""Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
""Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
""Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
""Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
""Plugin 'ascenator/L9', {'name': 'newL9'}

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
""""""""""""""""""""""Vundle""""""""""""""""""""""

colorscheme molokai
"set background=dark
"set t_Co=256
"let g:molokai_original = 1
let g:rehash256=1

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

"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i
"inoremap " ""<Esc>i

let mapleader="\<Space>"
"let g:mapleader=","
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>zz :wqa<cr>
map <leader>w :w<cr>

"map <space> /
"map <C-space> ?

map j gj
map k gk

"buffer
"map <C-,> :bp<cr>
"map <C-.> :bn<cr>
nmap <Tab> :b<space>
"map <leader>n :bn<cr>
"map <F6> :bn<cr>
"map <leader>p :bp<cr>
"map <F5> :bp<cr>

map <leader>e :NERDTreeToggle<cr>
"map <F7> :NERDTreeToggle<cr>
map <leader>t :TagbarToggle<cr>
"map <F8> :TagbarToggle<cr>

" ======= superTab
" let g:SuperTabRetainCompletionType=2
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0

autocmd FileType make set noexpandtab
autocmd FileType python set nocindent
autocmd FileType sh set nocindent
autocmd FileType expect set nocindent
autocmd BufNewFile,BufRead *.html,*.htm,*.css,*.js set noexpandtab tabstop=2 shiftwidth=2

"ag
"need brew install ag
map <leader>a :Ag<space>
let g:ag_working_path_mode='r'

" ================== CtrlP =====================
" ctrlP <C-f C-b> <C-j C-k> <C-t C-v C-x> <C-z mark C-o> help ctrlp-mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"map <leader>f :CtrlPMRU<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_user_command = 'ag %s -l -nocolor --hidden -g ""'

" ctrlp插件 Ctrlp-funky
" nnoremap fu :CtrlPFunky<space>
" narrow the list down with a word under cursor
" nnoremap fU :execute 'CtrlPFunky ' . expand('')
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']

" =================airline=============
"let g:airline#extensions#tabline#left_sep = '>'
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_powerline_fonts = 2
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif
"let g:airline_left_sep = '▶'
"let g:airline_left_alt_sep = '❯'
"let g:airline_right_sep = '◀'
"let g:airline_right_alt_sep = '❮'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
" 是否打开tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
"let g:airline_theme='simple'

"statusline 显示状态栏 默认值是1
set laststatus=2

"========== easymotion/vim-easymotion  begin==================
let g:EasyMotion_smartcase = 1
map <Leader><Leader> <Plug>(easymotion-prefix)
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
"map <Leader><leader>. <Plug>(easymotion-repeat)
"let g:EasyMotion_do_mapping = 0 " Disable default mappings
"
"" Bi-directional find motion
"" Jump to anywhere you want with minimal keystrokes, with just one key binding.
"" `s{char}{label}`
"nmap s <Plug>(easymotion-s)
"" or
"" `s{char}{char}{label}`
"" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-s2)
"
"" Turn on case insensitive feature
"let guEasyMotion_smartcase = 1
"
"" JK motions: Line motions
"map <Leader>l <Plug>(easymotion-lineforward)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-linebackward)
"
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
"
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
"
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
"========== easymotion/vim-easymotion  end==================

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" save session
nnoremap <leader>s :mksession!<CR>

