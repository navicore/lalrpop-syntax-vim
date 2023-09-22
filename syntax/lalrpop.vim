" LALRPOP Comments

syn match lalrpopComment "//.*$"
syn region lalrpopCommentBlock start="/\*" end="\*/"

" LALRPOP Nonterminals
syn match lalrpopNonterminal "^\w\+:"
syn region lalrpopNonterminal start="^\w\+:" end=";"

" LALRPOP Terminals
syn match lalrpopTerminal "\"[^\"]\+\""
syn match lalrpopTerminal '\'\S\+\''

" LALRPOP Actions (Rust code blocks)
syn region lalrpopAction start="{" end="}"

" LALRPOP Macros
syn match lalrpopMacro "\w\+!(.\+)"

hi def link lalrpopComment Comment
hi def link lalrpopCommentBlock Comment
hi def link lalrpopNonterminal Identifier
hi def link lalrpopTerminal String
hi def link lalrpopAction Special
hi def link lalrpopMacro Macro
