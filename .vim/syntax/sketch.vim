" The following commands compile the current file buffer with pdflatex
" The following commands compile the current file buffer with pdflatex
nmap <buffer> <F5> :w<Esc>:!sketch % -T > %:p:r.tex<CR>:!sketch % > %:p:r_input.tex<CR>
imap <F5> <ESC>:w<CR>:!sketch % -T > %:p:r.tex<CR>:!sketch % > %:p:r_input.tex<CR>

nmap <buffer> <F6> :w<Esc>:!pdflatex --enable-write %:p:r.tex<CR>
imap <F6> <ESC>:w<CR>:!pdflatex --enable-write %:p:r.tex<CR>

" The following command runs evince on an expect pdf output
nmap <buffer> <F4> :!evince '%:p:r.pdf' 2> /dev/null &<CR>
