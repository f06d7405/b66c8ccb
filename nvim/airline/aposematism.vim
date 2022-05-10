scriptencoding utf-8

" format: [ guiFG, guiBG, termFG, termBG, options ]
"  A | B | C                         X | Y | Z
"
"    A: mode
"    B: git
"    C: filename
"
"    X: format
"    Y: encoding
"    Z: position
"
" place in autoload/airline/themes/

let g:airline#themes#aposematism#palette = {}

"     ╓────────╖
"     ║ NORMAL ║
"     ╙────────╜

let s:airline_a_normal   = [ '#eef1f7' , '#394db1' , 15  ,  0 ]
let s:airline_b_normal   = [ '#eef1f7' , '#3c7abc' ,  3  ,  0 ]
let s:airline_c_normal   = [ '#7e8ca9' , '#19202e' ,  7  ,  8, 'none']

let g:airline#themes#aposematism#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

let g:airline#themes#aposematism#palette.normal_modified = {
      \ 'airline_c': [ s:airline_c_normal[0] , s:airline_c_normal[1] , s:airline_c_normal[2] , s:airline_c_normal[3] , 'italic' ] ,
      \ }

"     ╓────────╖
"     ║ INSERT ║
"     ╙────────╜

let s:airline_a_insert = [ '#7e8ca9' , '#19202e' ,  0  ,  3 ]
let s:airline_b_insert = s:airline_b_normal
let s:airline_c_insert = s:airline_c_normal
let g:airline#themes#aposematism#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let g:airline#themes#aposematism#palette.insert_modified = {
      \ 'airline_c': [ s:airline_c_insert[0] , s:airline_c_insert[1] , s:airline_c_insert[2] , s:airline_c_insert[3] , 'italic' ] ,
      \ }
let g:airline#themes#aposematism#palette.insert_paste = {
      \ 'airline_a': [ s:airline_a_insert[0]   , '#efaa4d' , s:airline_a_insert[2] , 11 , '' ] ,
      \ }

let g:airline#themes#aposematism#palette.terminal = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)

"     ╓─────────╖
"     ║ REPLACE ║
"     ╙─────────╜

let s:airline_a_replace = [ '#7e8ca9' , '#19202e' ,  0  ,  9 ]
let s:airline_b_replace = [ '#7e8ca9' , '#19202e' ,  9  ,  0 ]
let s:airline_c_replace = s:airline_c_normal
let g:airline#themes#aposematism#palette.replace = airline#themes#generate_color_map(s:airline_a_replace, s:airline_b_replace, s:airline_c_replace)
let g:airline#themes#aposematism#palette.replace_modified = g:airline#themes#aposematism#palette.insert_modified

"     ╓────────╖
"     ║ VISUAL ║
"     ╙────────╜

let s:airline_a_visual = [ '#19202e' , '#f9ca8b' ,   8 ,  11 ]
let s:airline_b_visual = [ '#19202e' , '#f9ca8b' ,   8 ,  11 ]
let s:airline_c_visual = [ '#19202e' , '#f9ca8b' ,   8 ,  11 , 'none']
let g:airline#themes#aposematism#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let g:airline#themes#aposematism#palette.visual_modified = {
      \ 'airline_c': [ s:airline_c_visual[0] , s:airline_c_visual[1] , s:airline_c_visual[2] , s:airline_c_visual[3] , 'italic' ] ,
      \ }

"     ╓──────────╖
"     ║ INACTIVE ║ (unused)
"     ╙──────────╜

let s:airline_a_inactive = [ '#4e4e4e' , '#1c1c1c' , 239 , 234 , '' ]
let s:airline_b_inactive = [ '#4e4e4e' , '#262626' , 239 , 235 , '' ]
let s:airline_c_inactive = [ '#4e4e4e' , '#303030' , 239 , 236 , '' ]
let g:airline#themes#aposematism#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#aposematism#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }

"     ╓──────────╖
"     ║ COMMANDS ║
"     ╙──────────╜

let s:airline_a_commandline = [ '#000000' , '#47cede' ,   3 ,  0 ]
let s:airline_b_commandline = s:airline_b_normal
let s:airline_c_commandline = [ '#47cede' , '#000000' ,   0 ,  3 ]
let g:airline#themes#aposematism#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

"     ╓─────────╖
"     ║ ACCENTS ║ (unused)
"     ╙─────────╜

let g:airline#themes#aposematism#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 1 , ''  ]
      \ }

