" The following commands compile the current file buffer with pdflatex
nmap <buffer> <F5> :w<Esc>:!pdflatex --enable-write %<CR>
imap <F5> <ESC>:w<CR>:!pdflatex --enable-write %<CR>
"nmap <buffer> <F6> :w<Esc>:!pdflatex --enable-write --jobname='%:r_solutions' '%:r'<CR>
"imap <F6> <ESC>:w<CR>:!pdflatex --enable-write --jobname='%:r_solutions' '%:r'<CR>

" The following commands compile latex with bibtex
 nmap <F6> <ESC>:w<CR>:!pdflatex --enable-write %<CR>:!bibtex '%:r'<CR>:!pdflatex %<CR>:!pdflatex %<CR>
 imap <F6> <ESC>:w<CR>:!pdflatex --enable-write %<CR>:!bibtex '%:r'<CR>:!pdflatex %<CR>:!pdflatex %<CR>

" The following command does a spell check
nmap <buffer> <F7> :w<Esc>:!aspell -c %<CR>

" The following enclose the visual selection in either braces or displaystyle \ds{ }
vmap sb "zdi{<C-R>z}<Esc>
vmap st "zdi$\ds{<C-R>z}$<Esc> 

" The following command runs zathura on an expected pdf output
nmap <buffer> <F4> :!zathura '%:p:r.pdf' 2> /dev/null &<CR>
