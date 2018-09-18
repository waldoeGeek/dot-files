set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"powerline
"
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
set cursorline
set ruler
set mouse=a
set softtabstop=2
set fillchars+=vert:.
colo waldoe02
set tabstop=2
set shiftwidth=4
set smarttab
set expandtab
set number
set clipboard=unnamedplus
syntax on
autocmd vimenter * NERDTree
map <C-\> :NERDTreeToggle<CR>
:nmap <c-s> :<CR>
:imap <c-s> <Esc>:w<CR>a

"Autocolors
let g:colorizer_auto_filetype = 'css,html,sass,jade'
let g:colorizer_auto_color = 1

"Autopairs
"
let g:AutoPairsShortcutToggle = '<C-p>'
"let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '':'','<':'>'}
"let g:AutoPairsFlyMode = 0
let g:AutoClosePairs = "() {} \""
let g:python_highlight_all = 1
filetype plugin on

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
Plugin 'ap/vim-css-color'
Plugin 'ajh17/Spacegray.vim'
Plugin 'chrisbra/Colorizer'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'townk/vim-autoclose'
"Plugin 'kabbamine/vcoolor.vim'
Plugin 'noahfrederick/vim-skeleton'
Plugin 'othree/html5.vim'
Plugin 'vim-python/python-syntax'
Plugin 'rkulla/pydiction'
"Plugin 'ajh17/VimCompletesMe'
"Plugin 'Valloric/YouCompleteMe'
