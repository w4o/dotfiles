" https://github.com/VundleVim/Vundle.vim#quick-start
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" https://github.com/w0rp/ale
" 代码检测
Plugin 'w0rp/ale'

" https://github.com/airblade/vim-gitgutter
" Git插件
Plugin 'airblade/vim-gitgutter'

" https://github.com/mhinz/vim-signify
"
Plugin 'mhinz/vim-signify'

call vundle#end()            " required
filetype plugin indent on    " required


" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
" 非兼容vi模式。去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible
" 文件修改之后自动载入
set autoread
" 显示高亮
syntax on
" 显示行号
set number
" 取消换行
set nowrap
" 为方便复制，用<F2>开启/关闭行号显示:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
" 粘贴时保持格式
set paste

" 检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on

" set background=dark
set ruler
" 设置Tab键的宽度，等同的空格个数
set tabstop=4
set smartindent
set shiftwidth=4
set expandtab
" 历史记录数
set history=1000
"搜索忽略大小写
set ignorecase
" 去掉输入错误的提示声音
"set noerrorbells
"set novisualbell
"set t_vb=
"set tm=500

colorscheme  molokai
let g:rehash256 = 1
" https://stackoverflow.com/a/24570615/5784369
let g:airline#extensions#hunks#enabled=0
