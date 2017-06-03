" Vim syntax file
"------------------------------------------------------------------

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif


" keywords are case-sensitive
syn case match


syn match vbkeys '^.\{-}:' contains=vbelems


"-------------------------------------
" and now for the highlighting

" things with one-to-one mapping
hi def link vbkeys Keyword
hi def link vbelems Statement
