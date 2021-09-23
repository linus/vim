"call pathogen#runtime_append_all_bundles()


set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
set tabstop=4
set shiftwidth=4
set expandtab 

" from http://rayninfo.co.uk/vimtips.html
set incsearch
set wildignore=*.o,*.pyc,*.exe,*.bak,*.swp,*.db
set ignorecase
set smartcase

" load pathogen
call pathogen#runtime_append_all_bundles()

" from http://vim.wikia.com/wiki/VimTip1628
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Display relative numbers (distance from current line) instead of absolute
set rnu

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" automatically insert right parens & brackets
:imap ( ()<C-[>i
:imap { {}<C-[>i
:imap [ []<C-[>i

" look for ctags in current directory, then file directory
" from http://vim.wikia.com/wiki/Browsing_programs_with_tags
set tags=tags,./tags

" Auto commands
" Return to last edit position
" from http://rayninfo.co.uk/vimtips.html
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

