if exists("did_load_filetypes")
      finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.mac        setfiletype maxima
  au! BufRead,BufNewFile *.dem        setfiletype maxima
  au! BufRead,BufNewFile *.cls        setfiletype tex
  au! BufRead,BufNewFile *.sk         setfiletype sketch
  au! BufRead,BufNewFile *.csv,*.dat	setfiletype csv
augroup END
