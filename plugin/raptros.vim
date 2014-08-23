" The vimrc:


" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
    syntax on
endif


" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=light

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
    filetype plugin indent on
endif

autocmd FileType python set omnifunc=pythoncomplete#Complete
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype * if &omnifunc == "" |
                \           setlocal omnifunc=syntaxcomplete#Complete |
                \   endif
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set ruler
set showmode
"set ls=2

"tab stuff
set autoindent
set shiftwidth=4
set softtabstop=4               "Insert 4 spaces when tab is pressed
set expandtab
set smarttab
set shiftround

set hlsearch
set incsearch

set nobackup

"other
set backspace=indent,eol,start
set showtabline=2

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'okular'

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
endif

let g:neocomplete#enable_at_startup = 1
let g:necoghc_enable_detailed_browse = 1
