Plug 'neovimhaskell/haskell-vim'

let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1

" let g:hs_highlight_delimiters = 1

filetype plugin indent on

augroup HaskellVim
    autocmd!

    autocmd User PlugLoaded hi def link haskellVimDecl GruvboxBlue
    autocmd User PlugLoaded hi def link haskellVimRecordField GruvboxGreen
    autocmd User PlugLoaded hi def link haskellVimRecord GruvboxOrange
    autocmd User PlugLoaded hi def link haskellVimTypeSig GruvboxGreen
    autocmd User PlugLoaded hi def link hsBrackets GruvboxOrange
    autocmd User PlugLoaded hi! link haskellVimIdentifier GruvboxGreen
 
    " autocmd User PlugLoaded hi def link hs_DeclareFunction2   GruvboxBlue
    " autocmd User PlugLoaded hi def link hs_DeclareFunction   GruvboxBlue
    " autocmd User PlugLoaded hi def link hs_FunctionName2   GruvboxRed
    autocmd User PlugLoaded hi! link hs_hlFunction    GruvboxRed
    autocmd User PlugLoaded hi! link hs_hlFunctionName    GruvboxGreen
    autocmd User PlugLoaded hi! link hs_HighliteInfixFunctionName GruvboxGreen
    autocmd User PlugLoaded hi! link hs_HlInfixOp       GruvboxGreen
    autocmd User PlugLoaded hi! link hs_OpFunctionName  GruvboxBlue

    autocmd User PlugLoaded hi! link hsConId            GruvboxYellow
    autocmd User PlugLoaded hi! link hsTypedef          GruvboxAqua
    autocmd User PlugLoaded hi! link hsVarSym           hsOperator
    autocmd User PlugLoaded hi! link hsConSym           hsOperator

    autocmd User PlugLoaded hi! link hsSpec             GruvboxOrange

    autocmd User PlugLoaded hi! link hsModuleStartLabel Structure
    autocmd User PlugLoaded hi! link hsExportModuleLabel Keyword
    autocmd User PlugLoaded hi! link hsModuleWhereLabel Structure
    autocmd User PlugLoaded hi! link hsModuleName       GruvboxRed
    
    autocmd User PlugLoaded hi! link hsImportIllegal    Error
    autocmd User PlugLoaded hi! link hsAsLabel          hsImportLabel
    autocmd User PlugLoaded hi! link hsHidingLabel      hsImportLabel
    autocmd User PlugLoaded hi! link hsImportLabel      Include
    autocmd User PlugLoaded hi! link hsImportMod        Include
    autocmd User PlugLoaded hi! link hsPackageString    hsString

    autocmd User PlugLoaded hi! link hsOperator         GruvboxBlue
    autocmd User PlugLoaded hi! link hsDelimiter         GruvboxOrange

    autocmd User PlugLoaded hi! link hsInfix            Keyword
    autocmd User PlugLoaded hi! link hsStructure        GruvboxAqua
    autocmd User PlugLoaded hi! link hsStatement        Statement
    autocmd User PlugLoaded hi! link hsConditional      GruvboxRed

    autocmd User PlugLoaded hi! link hsSpecialCharError Error
    autocmd User PlugLoaded hi! link hsSpecialChar      SpecialChar
    autocmd User PlugLoaded hi! link hsString           String
    autocmd User PlugLoaded hi! link hsFFIString        String
    autocmd User PlugLoaded hi! link hsCharacter        Character
    autocmd User PlugLoaded hi! link hsNumber           Number
    autocmd User PlugLoaded hi! link hsFloat            Float

    autocmd User PlugLoaded hi! link hsLiterateComment		  hsComment
    autocmd User PlugLoaded hi! link hsBlockComment     hsComment
    autocmd User PlugLoaded hi! link hsLineComment      hsComment
    autocmd User PlugLoaded hi! link hsModuleCommentA   hsComment
    autocmd User PlugLoaded hi! link hsModuleCommentB   hsComment
    autocmd User PlugLoaded hi! link hsComment          Comment
    autocmd User PlugLoaded hi! link hsCommentTodo      Todo
    autocmd User PlugLoaded hi! link hsPragma           GruvboxPurple
    autocmd User PlugLoaded hi! link hsBoolean			  Boolean
augroup end

"     " autocmd User PlugLoaded hi! link haskellList GruvboxYellow
"     " autocmd User PlugLoaded highlight def link haskellDelimiter GruvboxPurple
"     " autocmd User PlugLoaded highlight def link haskellSeparator GruvboxPurple

"     " autocmd User PlugLoaded hi! link hsPackageString  GruvboxGreen
"     " autocmd User PlugLoaded hi! link haskellHlFunctionName  GruvboxGreen

"     " autocmd User PlugLoaded hi! link hsModuleStartLabel GruvboxGreen
"     " autocmd User PlugLoaded hi! link hsExportModuleLabel GruvboxGreen
"     " autocmd User PlugLoaded hi! link hsModuleWhereLabel GruvboxGreen
"     " autocmd User PlugLoaded hi! link hsModuleName       GruvboxGreen
"     " autocmd User PlugLoaded hi! link hsImportIllegal    GruvboxGreen
"     " autocmd User PlugLoaded hi! link hsAsLabel          GruvboxGreen
"     " autocmd User PlugLoaded hi! link hsHidingLabel      GruvboxGreen
"     " autocmd User PlugLoaded hi! link hsImportLabel      GruvboxGreen
"     " autocmd User PlugLoaded hi! link hsImportMod        GruvboxGreen

"     " autocmd User PlugLoaded hi! link haskellIdentifier GruvboxGreen

"     " autocmd User PlugLoaded hi! link haskellString GruvboxGreen

"     " autocmd User PlugLoaded hi! link haskellType GruvboxYellow
"     " autocmd User PlugLoaded hi! link haskellPragma GruvboxPurple

"     " autocmd User PlugLoaded hi! link haskellOperators GruvboxBlue
"     " autocmd User PlugLoaded hi! link haskellBacktick GruvboxBlue

"     " autocmd User PlugLoaded hi! link haskellDeclKeyword GruvboxAqua
"     " autocmd User PlugLoaded hi! link haskellDeriveKeyword GruvboxAqua
"     " autocmd User PlugLoaded hi! link haskellDecl GruvboxRed
"     " autocmd User PlugLoaded hi! link haskellWhere GruvboxAqua
"     " autocmd User PlugLoaded hi! link haskellLet GruvboxAqua

"     " autocmd User PlugLoaded hi! link hs_Function GruvboxAqua

"     " autocmd User PlugLoaded hi! link hsClass GruvboxOrange

"     " autocmd User PlugLoaded hi! link hsOperator GruvboxBlue
"     " autocmd User PlugLoaded hi! link hsImportLabel GruvboxRed
"     " autocmd User PlugLoaded hi! link hsVarId GruvboxBlue
