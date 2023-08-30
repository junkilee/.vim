"
" Jun Ki Lee's .vimrc file
"
set nocompatible

helptags ALL

filetype plugin indent on

" allow backspacing over autoindent, line breaks, and start of insert action
set backspace=indent,eol,start

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on 

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Have Vim load indentation rules according to the detected filetype. Per
" default Debian Vim only load filetype specific plugins.
if has("autocmd")
  filetype indent on
endif

set showcmd            " Show (partial) command in status line.
set showmatch          " Show matching brackets.
set ignorecase         " Do case insensitive matching
set smartcase          " Do smart case matching
set incsearch          " Incremental search
set autowrite          " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
                       " This allow you not to save file each time and
                       " navigate
set confirm            " Prompts to save or cancel
set wildmenu           " Better command-line completion
set nostartofline      " Stop certain movements from always going to the first 
                       " character of line.

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
" set cmdheight=2

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

" mouse setup
set mouse=a
set ttymouse=xterm2

set autoindent
set number

" powerline fonts
"let g:airline_powerline_fonts = 1
let g:tmuxline_powerline_separators = 0

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.swp$', '__pycache__$[[dir]]']

if &term =~ '^screen' || &term =~ '^xterm'
  set t_Co=256
endif

colorscheme atom-dark-256
"command DC colorscheme tango
command AC colorscheme atom-dark-256
"command MC colorscheme monokai

" folding
set foldmethod=indent
set foldnestmax=2
set nofoldenable
command Mousefold 'set foldcolumn=1'

" vimwiki settings
let wiki = {}
let wiki.path = '~/jklee_wiki/'
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
let wiki.nested_syntaxes = {'python': 'python', 'java': 'java', 'c++': 'cpp'}
let g:vimwiki_list = [wiki]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown', '.wiki': 'default'}
let g:vimwiki_folding='expr' " '', 'expr', 'syntax', 'list'

" Calendar
let g:calendar_google_calendar=1
let g:calendar_google_task=1
