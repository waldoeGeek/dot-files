set nocompatible
filetype off
"filetype plugin on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'chrisbra/Colorizer'
"Plugin 'ap/vim-css-color'
Plugin 'ajh17/Spacegray.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'townk/vim-autoclose'
"Plugin 'kabbamine/vcoolor.vim'
"Plugin 'noahfrederick/vim-skeleton'
Plugin 'othree/html5.vim'
Plugin 'vim-python/python-syntax'
Plugin 'rkulla/pydiction'
"Plugin 'ajh17/VimCompletesMe'
"Plugin 'Valloric/YouCompleteMe'
filetype plugin indent on

"powerline
"
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set cursorline
set ruler
set mouse=a
set number
set backspace=indent,eol,start
fixdel
set omnifunc=syntaxcomplete#Complete
"set backspace=2
"set Proper Tabs
set tabstop=2
set shiftwidth=4
set smarttab
set softtabstop=2
"set expandtab
set fillchars+=vert:.
" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
colo waldoe02
syntax on
autocmd vimenter * NERDTree

"MAPS
map <C-\> :NERDTreeToggle<CR>
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
map <C-K> :ColorToggle<CR>

"autocolors
let g:colorizer_auto_filetype = 'css,html,sass'

"Autopairs
"
let g:AutoPairsShortcutToggle = '<C-p>'
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '':'','<':'>'}
let g:AutoPairsFlyMode = 0
let g:AutoClosePairs = "() {} \""
let g:python_highlight_all = 1
filetype plugin on
"pydiction
let g:pydiction_location = '/home/skunky/.vim/gits/pydiction/complete-dict'
let g:pydiction_menu_height = 3

"omnicpp
if v:version >= 700
  set omnifunc=syntaxcomplete#Complete " override built-in C omnicomplete with C++ OmniCppComplete plugin
  let OmniCpp_GlobalScopeSearch   = 1
  let OmniCpp_DisplayMode         = 1
  let OmniCpp_ShowScopeInAbbr     = 0 "do not show namespace in pop-up
  let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
  let OmniCpp_ShowAccess          = 1 "show access in pop-up
  let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
  set completeopt=menuone,menu,longest
endif
