" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2001 Jul 23

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "colour-z"

hi Comment    ctermfg=darkgreen
hi Constant   ctermfg=red
hi Boolean    ctermfg=lightblue
hi Identifier ctermfg=lightblue     cterm=none
hi Statement  ctermfg=green   
hi PreProc    ctermfg=darkyellow
hi Type       ctermfg=blue
hi Special    ctermfg=yellow
hi Underlined                    cterm=underline
hi Ignore     ctermfg=darkgray
hi Error      ctermfg=white      ctermbg=red
hi Todo       ctermfg=black      ctermbg=yellow


" vim: sw=2
