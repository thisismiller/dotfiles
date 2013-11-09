augroup satslit
  au BufWritePost *.satslit silent !unlit -l % -o %:r.sats
  au BufWritePost *.satslit redraw
augroup end

augroup datslit
  au BufWritePost *.datslit silent !unlit -l % -o %:r.dats
  au BufWritePost *.datslit redraw
augroup end

augroup catslit
  au BufWritePost *.catslit silent !unlit -l % -o %:r.cats
  au BufWritePost *.catslit redraw
augroup end

augroup hatslit
  au BufWritePost *.hatslit silent !unlit -l % -o %:r.hats
  au BufWritePost *.hatslit redraw
augroup end
