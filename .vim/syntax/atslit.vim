" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

runtime! syntax/markdown.vim
unlet b:current_syntax

syntax include @atsTop syntax/ats.vim
unlet b:current_syntax

syntax region litAtsBirdTrack start="^>" end="\%(^[^>]\)\@=" contains=@atsTop,litBirdTrack

syntax match litBirdTrack "^>" contained

if version >= 508
  if version < 508
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink litBirdTrack Comment

  delcommand HiLink
endif

let b:current_syntax = "atslit"

" vim: ts=8
