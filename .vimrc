"visual stuff
set ruler
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
syntax enable
syntax on
filetype on
set autochdir
"set number
"set wrap!
if has("gui_running") 
  set guioptions=aiA " Disable toolbar, menu bar, scroll bars 
endif " has("gui_running") 

"NERDtree stuff
:let NERDTreeQuitOnOpen = 0
:let NERDTreeChDirMode = 2
nnoremap <Leader>D :let NERDTreeQuitOnOpen = 1<bar>NERDTreeToggle<CR>
nnoremap <Leader>d :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR>

"ACK plugin
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

"use different colorscheme for mac vim and console vim
if has('gui_running')
  colorscheme railscasts
else
  colorscheme desert256
endif 

"2 spaces per tab
set autoindent
set bs=2
set tabstop=2
set shiftwidth=2

"do the right thing with tabs
set smartindent
set expandtab
filetype indent on

"keymapping
" map <C-n> :FufFile **/<CR>
:let project_folder = system("PROJECT=`git rev-parse --show-toplevel 2>/dev/null`; if [ -z $PROJECT ]; then PROJECT=~/; fi; echo $PROJECT")
:let command='map <C-n> :FufFile ' . project_folder 
:execute command 
map <C-S-r> :MRU<CR>
map <C-Tab> <C-w>w
map <C-Esc> <C-w>c

"search
set incsearch
set ignorecase

"misc
set smartcase
set nocompatible
set bufhidden=hide
set scrolloff=3
source ~/.vim/autotag.vim

"fix grep
:let Grep_Find_Use_Xargs = 0
:let Grep_Default_Filelist = '*.rb'

"map camelcasemotion replacements to w,b,e so they are camelcase and _ aware
"map <silent> w <Plug>CamelCaseMotion_w
"map <silent> b <Plug>CamelCaseMotion_b
"map <silent> e <Plug>CamelCaseMotion_e
"sunmap w
"sunmap b
"sunmap e

"set the tab search path
:set path=.,,**

"split stuff
set splitright
