execute pathogen#infect()
Helptags

filetype plugin indent on

syntax on 
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

set mouse=a
set ttymouse=xterm2

set ignorecase
set smartcase

set autoindent
set number
set confirm

" powerline fonts
"let g:airline_powerline_fonts = 1
let g:tmuxline_powerline_separators = 0

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.swp$']

if &term =~ '^screen' || &term =~ '^xterm'
  set t_Co=256
endif

colorscheme atom-dark-256

set nofoldenable

let wiki = {}
let wiki.path = '~/jklee_wiki/'
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
let g:vimwiki_list = [wiki]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_folding='expr' " '', 'expr', 'syntax', 'list'
let wiki.nested_syntaxes = {'python': 'python', 'sh': 'sh'}

" allow backspacing over autoindent, line breaks, and start of insert action
set backspace=indent,eol,start

" Calendar
let g:calendar_google_calendar=1
let g:calendar_google_task=1
