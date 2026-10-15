" Gentle Mary — a Vim colorscheme
" Derived from the colorscheme used in WebStorm. The name is a pun on "primary":
" primary colours, softened a little to be gentle on the eye.
"
"   keywords/statements  red      functions/methods   green
"   properties           blue     types/classes       purple
"   strings              yellow   numbers/booleans    cyan
"   comments/semicolons  grey     globals/constants   bright white
"
" Ported from ~/.vim/colors_for_elvin_gentlemary.vim.

hi clear
if exists("syntax_on")
  syntax reset
endif
set background=dark
let g:colors_name = "gentlemary"

" ─────────────────────────────────────────────────────────────────────────────
" Palette helper groups
" ─────────────────────────────────────────────────────────────────────────────
hi GentleMaryGreen    ctermfg=71  guifg=#3DA676
hi GentleMaryPurple   ctermfg=133 guifg=#A576A0
hi GentleMaryCyan     ctermfg=73  guifg=#88cccc
hi GentleMaryBlue     cterm=NONE ctermfg=68 guifg=#4B95DC
hi Global             ctermfg=254 guifg=#eeeeee
hi GentleMaryTemplate guibg=#0a1717
" Our name for 'blue property' tokens
hi! link ObjectProperty GentleMaryBlue

" ─────────────────────────────────────────────────────────────────────────────
" Editor UI
" ─────────────────────────────────────────────────────────────────────────────
hi Normal      ctermfg=250 ctermbg=NONE guifg=#cccccc guibg=#102626
hi CursorLine  ctermbg=238 guibg=#1b2d2d
hi LineNr      ctermbg=234 ctermfg=240 guibg=#223333 guifg=#585858
hi SignColumn  ctermbg=235 ctermfg=238 guibg=#223333 guifg=#444444
hi SpellBad    ctermbg=red ctermfg=white guibg=red guifg=white
hi SpellCap    ctermbg=58 guibg=#554400 gui=NONE
hi SpecialKey  ctermfg=239 guifg=#4c4c4c
hi Todo        cterm=NONE ctermbg=black ctermfg=yellow gui=NONE guibg=black guifg=yellow
" Word under the cursor and search results get a background emphasis (green / blue),
" matching the highlight behaviour of the WebStorm and bat themes.
hi HLCurrentWord ctermbg=22 ctermfg=white cterm=bold guibg=#006600 guifg=#dddddd gui=bold
hi Search        ctermbg=25 ctermfg=white cterm=bold guibg=#0044bb guifg=#dddddd gui=bold
hi MatchParen    ctermfg=yellow cterm=bold guifg=yellow gui=bold
" From dim_inactive_windows
hi InactiveWindows ctermbg=237 guibg=#223333
hi! link EndOfBuffer InactiveWindows

" ─────────────────────────────────────────────────────────────────────────────
" Core syntax
" ─────────────────────────────────────────────────────────────────────────────
hi Statement   cterm=bold gui=bold ctermfg=131 guifg=#AF4A67
hi Comment     ctermfg=242 gui=NONE guifg=#777777
hi String      ctermfg=180 guifg=#CCB385
hi SpecialChar ctermfg=214 guifg=#CC7832
hi javaScriptSemicolon ctermfg=245 guifg=#8a8a8a

hi! link Function GentleMaryGreen

" Identifier can refer to functions OR variables, which we want to colour
" differently, so we leave it as Normal rather than committing it to either.
" (Linking Identifier to Statement/ObjectProperty caused trouble elsewhere, e.g.
" highlighting a function name in a call the same as the `call` statement.)
hi! link Identifier Normal

hi! link Type     GentleMaryPurple
hi! link Special  Global
hi! link Constant Global
hi! link Number   GentleMaryCyan
hi! link Boolean  Number

" Not the prettiest, but it gives good contrast and matches how we colour
" JavaScript in VSCode.
hi! link PreProc Statement

" Structure (e.g. JS function braces) stays as plain text
hi! link Structure Normal
hi! link Operator  Statement

" ─────────────────────────────────────────────────────────────────────────────
" JavaScript
" ─────────────────────────────────────────────────────────────────────────────
hi! link javascriptIdentifier Statement
hi! link javascriptProperty   ObjectProperty
" The 'function' keyword
hi! link javascriptFunction     Statement
hi! link javascriptFunctionName Function
hi! link javascriptMethod       Function
hi! link javascriptParens Normal
hi! link javascriptBraces Normal
" Stock syntax (Claudio Fleiner): props/labels are blue. Note javascriptProp and
" javascriptMethod can be masked by javascriptBlock inside expressions.
hi! link javascriptProp        javascriptProperty
hi! link javascriptParenExp    javascriptProperty
hi! link javascriptObjectLabel javascriptProperty
" From polyglot
hi! link jsBlockLabel javascriptProperty
" The 'throw' keyword
hi! link javaScriptExceptions Statement
" Keep = and < as normal white, not red
hi! link javaScriptAssignment Normal
" Covers 'delete' and 'typeof'
hi! link javaScriptOperator Statement
hi! link javaScriptNumber   Number

" For standard JavaScript syntax
hi! link jsFunction Statement
hi! link jsExport   Statement
hi! link jsImport   Statement
hi! link jsFrom     Statement

" For the pangloss syntax
hi! link jsObjectProp      javascriptProperty
hi! link jsObjectKey       javascriptProperty
hi! link jsObjectStringKey javascriptProperty
hi! link jsFunctionKey  Function
hi! link jsFuncCall     Function
" Relates to VSCode's "storage.type"
hi! link jsStorageClass Statement
" Covers '==' and '>', but also 'delete' (which, like 'typeof', isn't really a statement)
hi! link jsOperator     Normal
hi! link jsArrowFunction Normal
hi! link jsNoise        javaScriptSemicolon
hi! link jsBraces       Structure
hi! link jsFuncBraces   Structure
" A function call, or in an expression
hi! link jsParens       Normal
hi! link jsIfElseBraces Normal
hi! link jsObjectBraces Normal
" Escaped chars in strings (and possibly other specials)
hi! link jsSpecial      GentleMaryPurple

" Deviate from WebStorm: colour these the way that is actually most useful
hi! link jsGlobalObjects Normal
hi! link jsExceptions    Normal
hi! link jsThis          GentleMaryPurple
hi! link jsSuper         GentleMaryPurple
hi! link jsTemplateBraces Statement

" ─────────────────────────────────────────────────────────────────────────────
" JSON
" ─────────────────────────────────────────────────────────────────────────────
hi! link jsonProperty    javascriptProperty
" On Manjaro it is jsonKeyword
hi! link jsonKeyword     javascriptProperty
" JSON5 keys
hi! link json5Key        javascriptProperty
" De-emphasise punctuation in JSON
hi! link jsonNoise        javaScriptSemicolon
hi! link jsonQuote        jsonNoise
hi! link jsonBraces       jsonNoise
hi! link jsonKeywordMatch jsonNoise
" For some reason "" gets matched by jsonFold
hi! link jsonFold         jsonNoise

" ─────────────────────────────────────────────────────────────────────────────
" TypeScript
" ─────────────────────────────────────────────────────────────────────────────
hi! link typescriptBraces       Normal
hi! link typescriptParens       Normal
hi! link typescriptEndColons    jsNoise
hi! link typescriptStorageClass Statement
hi! link typescriptExceptions   Statement
hi! link typescriptReserved     GentleMaryPurple
" this / void / arguments
hi! link typescriptIdentifier   GentleMaryPurple
hi! link typescriptImport       Statement
hi! link typescriptExport       Statement
hi! link typescriptCastKeyword  Statement
hi! link typescriptArrowFuncArg Normal
hi! link typescriptFuncComma    Normal
hi! link typescriptVariable     GentleMaryPurple
hi! link typescriptProp         ObjectProperty
hi! link typescriptDestructureVariable Normal
" Otherwise the properties of interfaces get linked to Function
hi! link typescriptMember      ObjectProperty
hi! link typescriptObjectLabel ObjectProperty
" Function arguments
hi! link typescriptCall        Normal
hi! link typescriptInterfaceName     Type
hi! link typescriptInterfaceHeritage typescriptInterfaceName
hi! link typescriptTypeReference     Type
hi! link typescriptClassName    Function
hi! link typescriptClassHeritage typescriptClassName
" Tends to get overridden by typescriptBlock, so this may have no effect
hi! link typescriptIdentifierName Type
hi! link typescriptObjectStaticMethod  Function
hi! link typescriptPromiseStaticMethod Function
hi! link typescriptArrayMethod         Function
hi! link typescriptPromiseMethod       Function
hi! link typescriptCacheMethod         Function
hi! link typescriptConsoleMethod       Function

" ─────────────────────────────────────────────────────────────────────────────
" HTML / JSX / XML
" ─────────────────────────────────────────────────────────────────────────────
" Make HTML look like JSX: tags purple
hi! link htmlTag            GentleMaryPurple
hi! link htmlTagName        GentleMaryPurple
hi! link htmlSpecialTagName GentleMaryPurple
hi! link htmlEndTag         htmlTag
hi! link htmlArg            Function
hi! link htmlLink           mkdURL

" For JSX. Don't forget to `set ft=javascript.jsx` if it is not already set.
hi! link jsxTagName GentleMaryPurple
hi! link jsxAttrib  ObjectProperty
hi jsxPunct ctermfg=247 guifg=#999999

hi! link xmlTag       GentleMaryPurple
hi! link xmlTagName   GentleMaryPurple
hi! link xmlEndTag    xmlTag
hi! link xmlAttrib    Function
hi! link xmlEntityPunct xmlEntity

hi! link djangoTagBlock Normal
hi! link djangoVarBlock Normal

" For styled-components
hi! link cssProp GentleMaryPurple

" ─────────────────────────────────────────────────────────────────────────────
" Shell
" ─────────────────────────────────────────────────────────────────────────────
" General commands like mkdir/cat/unset (not comprehensive; misses e.g. shift, which)
hi! link shStatement Statement
hi! link shLoop      Statement
hi! link shVarAssign Statement
hi! link shVariable  GentleMaryBlue
hi! link shSetList   shVariable
" Variable references
hi! link shDeref       shVariable
hi! link shDerefSimple shDeref
hi! link shOperator  Statement
hi! link shOption    Normal
hi! link shQuote     String
hi! link shAlias     Function
hi! link shHereDoc   GentleMaryTemplate
" Command substitutions in backticks or $(...). For multi-line substitutions with
" complex statements, code should look like it would outside the substitution.
hi! link shCommandSub Normal
hi! link shEscape    Type
hi! link shCaseLabel String

" ─────────────────────────────────────────────────────────────────────────────
" Markdown
" ─────────────────────────────────────────────────────────────────────────────
hi! link Title      Function
hi! link mkdHeading Title
" Bold is magenta, italic is red. Cover the built-in (markdown*), plasticboy (mkd*)
" and embedded-HTML (html*) group names, since which one fires depends on the syntax.
hi! link markdownBold       GentleMaryPurple
hi! link markdownBoldItalic GentleMaryPurple
hi! link markdownItalic     Statement
hi! link mkdBold            GentleMaryPurple
hi! link mkdItalic          Statement
hi! link htmlBold           GentleMaryPurple
hi! link htmlBoldItalic     GentleMaryPurple
hi! link htmlItalic         Statement
hi Underlined ctermfg=133 cterm=underline guifg=#A576A0 gui=underline
hi mkdLink    ctermfg=133 cterm=underline guifg=#A576A0 gui=underline
" Make http links blue
hi mkdURL       ctermfg=68 cterm=underline guifg=#4B95DC gui=underline
hi mkdInlineURL ctermfg=68 cterm=underline guifg=#4B95DC gui=underline
hi! link mkdCode          Comment
hi! link mkdCodeDelimiter mkdCode
hi! link mkdCodeStart     mkdCode
hi! link mkdCodeEnd       mkdCode
" These can look messy if SyntaxRange has half-highlighted the code, but when they
" work properly the result is quite nice.
hi! link mkdSnippetSH Comment
hi! link mkdSnippetJS Comment
hi! link mkdBlockquote String
" Polyglot (Linux)
hi! link markdownFencedCodeBlock    mkdCode
hi! link markdownInlineCode         mkdCode
hi! link markdownCodeDelimiter      mkdCode
hi! link markdownBlockquoteDelimiter mkdBlockquote
hi! link markdownBlockquote          mkdBlockquote

" ─────────────────────────────────────────────────────────────────────────────
" Other languages
" ─────────────────────────────────────────────────────────────────────────────
" Vim: we cleared Identifier, so highlight functions and variables explicitly
hi! link vimFunction Function
hi! link vimFuncVar  Function
hi! link vimGroup    Type
hi! link vimHiTerm   GentleMaryBlue
hi! link vimHiGui    GentleMaryBlue
hi! link vimHiAttrib Normal

" Git config: this is an Identifier by default
hi! link gitConfigProperty ObjectProperty

" Java
hi! link javaOperator    Operator
hi! link javaScopeDecl   Statement
hi! link javaDocTags     PreProc
hi! link javaTypeDef     Statement
hi! link javaStorageClass Statement
hi! link javaType        Type

" Swift / Objective-C
hi! link cType     Type
hi! link objcClass Type

" YAML
hi! link yamlKey GentleMaryBlue

" Makefiles
hi! link makeCommands Normal

" SQL
hi! link sqlKeyword Statement

" Logfiles: needn't be purple, we just don't want it grey
hi! link logBrackets GentleMaryPurple
hi! link logFilePath Global
hi! link logDomain   GentleMaryBlue

" NERDTree
hi! link NERDTreeLinkFile netrwLink
hi! link NERDTreeExecFile netrwExe

" When embedding syntax in markdown we can't affect everything, but we can reduce
" the intensity of the surrounding Normal text.
hi synIncludeSh ctermfg=247 guifg=#999999

" sxhkd config
hi! link sxKeySym GentleMaryGreen
