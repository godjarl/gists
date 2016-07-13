 filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-airline/vim-airline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'ternjs/tern_for_vim'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
" 
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" {
" 语法高亮
 syntax enable
 syntax on
" 自适应不同语言的智能缩进
 filetype indent on
" 将制表符扩展为空格
 set expandtab
" 设置编辑时制表符占用空格数
 set tabstop=2
" 设置格式化时制表符占用空格数
 set shiftwidth=2
" 让 vim 把连续数量的空格视为一个制表符
 set softtabstop=2
" 设置主题
 set background=dark
 let g:solarized_termcolors=256
 colorscheme solarized
" 禁止光标闪烁
 set gcr=a:block-blinkon0
" 禁止显示滚动条
 set guioptions-=l
 set guioptions-=L
 set guioptions-=r
 set guioptions-=R
" 禁止显示菜单和工具条
 set guioptions-=m
 set guioptions-=T
" 定义快捷键的前缀，即<Leader>
 let mapleader=";"
" 开启实时搜索功能
 set incsearch
" 搜索时大小写不敏感
 set ignorecase
" 关闭兼容模式
 set nocompatible
" vim 自身命令行模式智能补全
 set wildmenu
" 显示光标当前位置
 set ruler
" 开启行号显示
 set number
" 括号自动补全
 inoremap ( ()<ESC>i
 inoremap [ []<ESC>i
 inoremap { {}<ESC>i
 inoremap < <><ESC>i
 inoremap ' ''<ESC>i
 inoremap " ""<ESC>i
" 高亮显示当前行/列
 set cursorline
 set cursorcolumn
" 高亮显示搜索结果
 set hlsearch
" 禁止拆行
 set nowrap
" 删除键功能修复
 set backspace=indent,eol,start
" 状态栏主题风格
 let g:airline_colorscheme='solarized256'
" 一直显示状态栏
 set laststatus=2
" 缩进可视化
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 可视化色块颜色
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=0
hi IndentGuidesEven ctermbg=8
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=2
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
" 基于缩进或语法进行代码折叠
" set foldmethod=indent
" set foldmethod=syntax
set foldmethod=marker
set foldmarker={,}
" 启动 vim 时关闭折叠代码
set nofoldenable
" YCM选词
let g:ycm_key_list_select_completion = ['<Tab>']
let g:ycm_key_list_previous_completion = ['<C-Tab>']
" nerdtree设置
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" }
