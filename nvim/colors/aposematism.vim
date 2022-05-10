if has('gui_running') || &t_Co < 256
    finish
endif

set background=dark

hi clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'aposematism'

" A comment: this is how the "to do" looks:
" TODO
hi! Constant            ctermfg=15
hi! Identifier          ctermfg=07            cterm=none
hi! Statement           ctermfg=03
hi! Comment             ctermfg=08            cterm=italic
hi! PreProc             ctermfg=07
hi! Type                ctermfg=03            cterm=italic
hi! Special             ctermfg=07
hi! Error               ctermfg=15 ctermbg=01
hi! Todo                ctermfg=00 ctermbg=11
hi! String              ctermfg=15            cterm=italic
hi! LineNr              ctermfg=08 ctermbg=00
hi! NonText             ctermfg=08
hi! MatchParen          ctermfg=03 ctermbg=00

hi! StatusLine          ctermfg=07 ctermbg=08 cterm=none
hi! WildMenu            ctermfg=03 ctermbg=08 cterm=bold
hi! VertSplit           ctermfg=00 ctermbg=08
