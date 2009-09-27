set nocompatible
syntax on
colorscheme colour-z
set tabstop=2
set shiftwidth=2
set number
set softtabstop=2
set smarttab
set sw=2
set mouse=a
set showmode
set showcmd
set nowrap
set autoindent
set expandtab
autocmd FileType c,cpp,slang set cindent
set ignorecase
set smartcase
set incsearch
set nohlsearch
set tabpagemax=20

:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

