" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! arch.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

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

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif


" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
"set spell               " Spell check

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set smartindent		" set smart indenting
set softtabstop=2	" set small tabs
set shiftwidth=2	" set shifting width 
set expandtab           " tab key sends spaces
let g:tex_indent_brace = 0 " Don't indent when I type { or [
set nocindent           " This behavior is too wacky

set number		" set line numbering on  

" disable error bell
set noerrorbells
set vb " For some reason the absense of a visual bell makes a noisy one

" Make vim set title in tmux
let &titlestring = hostname() . "[vim(" . expand("%:t") . ")]"
if &term == "screen"
  set t_ts=k
  set t_fs=\
endif

hi CursorLine term=bold cterm=bold guibg=Grey40

autocmd BufEnter * let &titlestring = "vim " . expand("%:t") . " " . expand("%:h")

" LaTeX syntax stuff
let g:tex_flavor = "tex"           " This ensures that *.tex files are syntax highlighted
"let g:tex_comment_nospell= 1       " This turns off spell checking in comments

"" Load local .vimrc.local. I installed a plugin to do this instead 
"let vimrcString = getcwd() . '/.vimrc.local'
"if filereadable( vimrcString )
"  execute 'source '.vimrcString
"endif

let g:localvimrc_sandbox = 0 " For the localvimrc plugin
let g:localvimrc_ask = 0     " Don't ask to source .lvimrc

let g:tex_indent_and = 0 " This option does goofy back indenting in equations for some reason

" Pathogen plugin management for VIM
execute pathogen#infect()

" Make Tmux default for vimslime
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
