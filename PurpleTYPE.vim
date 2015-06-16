" PurpleTYPE
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif
set t_Co=256
let g:colors_name = "PurpleTYPE"
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi Normal guifg=#fdfcff guibg=#110026 guisp=#110026 gui=NONE ctermfg=15 ctermbg=17 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi EnumerationName -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#ffadec guibg=#3e0e42 guisp=#3e0e42 gui=NONE ctermfg=219 ctermbg=53 cterm=NONE
hi WildMenu guifg=#77f75e guibg=#6ea3b8 guisp=#6ea3b8 gui=NONE ctermfg=119 ctermbg=67 cterm=NONE
hi SignColumn guifg=#00d0fa guibg=#536991 guisp=#536991 gui=NONE ctermfg=45 ctermbg=60 cterm=NONE
hi SpecialComment guifg=#ff8800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Typedef guifg=#035fff guibg=NONE guisp=NONE gui=bold ctermfg=27 ctermbg=NONE cterm=bold
hi Title guifg=#aaeffa guibg=NONE guisp=NONE gui=bold ctermfg=159 ctermbg=NONE cterm=bold
hi Folded guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi PreCondit guifg=#94ffa9 guibg=NONE guisp=NONE gui=NONE ctermfg=121 ctermbg=NONE cterm=NONE
hi Include guifg=#2ad100 guibg=NONE guisp=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi Float guifg=#1ef5e3 guibg=#002438 guisp=#002438 gui=NONE ctermfg=50 ctermbg=23 cterm=NONE
hi StatusLineNC guifg=#d9fa96 guibg=#125c5c guisp=#125c5c gui=bold ctermfg=192 ctermbg=23 cterm=bold
hi NonText guifg=#05c9ff guibg=NONE guisp=NONE gui=italic ctermfg=45 ctermbg=NONE cterm=NONE
hi DiffText guifg=#ffee70 guibg=#333100 guisp=#333100 gui=NONE ctermfg=227 ctermbg=58 cterm=NONE
hi ErrorMsg guifg=#ffffff guibg=#c170ff guisp=#c170ff gui=NONE ctermfg=15 ctermbg=135 cterm=NONE
hi Ignore guifg=#8ec3de guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Debug guifg=#00ff73 guibg=NONE guisp=NONE gui=NONE ctermfg=48 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=#884ca6 guibg=#4d5080 guisp=#4d5080 gui=NONE ctermfg=97 ctermbg=60 cterm=NONE
hi Identifier guifg=#ff9924 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#f896ff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
hi Conditional guifg=#0099ff guibg=NONE guisp=NONE gui=bold ctermfg=33 ctermbg=NONE cterm=bold
hi StorageClass guifg=#8affb5 guibg=NONE guisp=NONE gui=bold ctermfg=121 ctermbg=NONE cterm=bold
hi Todo guifg=#ffb2fc guibg=#184fbd guisp=#184fbd gui=NONE ctermfg=219 ctermbg=4 cterm=NONE
hi Special guifg=#f6b2ff guibg=NONE guisp=NONE gui=NONE ctermfg=219 ctermbg=NONE cterm=NONE
hi LineNr guifg=#6259c2 guibg=#1b003b guisp=#1b003b gui=NONE ctermfg=62 ctermbg=17 cterm=NONE
hi StatusLine guifg=#fadeff guibg=#2b00a3 guisp=#2b00a3 gui=bold ctermfg=225 ctermbg=19 cterm=bold
hi Label guifg=#e6007b guibg=NONE guisp=NONE gui=bold ctermfg=161 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#ffffff guibg=#4985f5 guisp=#4985f5 gui=NONE ctermfg=15 ctermbg=69 cterm=NONE
hi Search guifg=#29f5cc guibg=#0f595c guisp=#0f595c gui=NONE ctermfg=50 ctermbg=23 cterm=NONE
hi Delimiter guifg=#61f2ff guibg=NONE guisp=NONE gui=NONE ctermfg=87 ctermbg=NONE cterm=NONE
hi Statement guifg=#fff6d1 guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
hi SpellRare guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Comment guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Character guifg=#ffcf70 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#ffffff guibg=#e3ccff guisp=#e3ccff gui=bold ctermfg=15 ctermbg=189 cterm=bold
hi Number guifg=#99fffa guibg=NONE guisp=NONE gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi Boolean guifg=#54ffaf guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi Operator guifg=#fae350 guibg=NONE guisp=NONE gui=bold ctermfg=221 ctermbg=NONE cterm=bold
hi CursorLine guifg=NONE guibg=NONE guisp=#ffffff gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi Union guifg=#4cc3ff guibg=#6b61b0 guisp=#6b61b0 gui=NONE ctermfg=81 ctermbg=61 cterm=NONE
hi TabLineFill guifg=#b8ffff guibg=#3e0273 guisp=#3e0273 gui=bold ctermfg=159 ctermbg=54 cterm=bold
hi Question guifg=#ffffff guibg=#0d15ff guisp=#0d15ff gui=NONE ctermfg=15 ctermbg=21 cterm=NONE
hi WarningMsg guifg=#ca29ff guibg=#f0a888 guisp=#f0a888 gui=NONE ctermfg=13 ctermbg=216 cterm=NONE
hi VisualNOS guifg=#30ffdd guibg=#3636ff guisp=#3636ff gui=underline ctermfg=50 ctermbg=13 cterm=underline
hi DiffDelete guifg=#8affe4 guibg=#002b33 guisp=#002b33 gui=NONE ctermfg=122 ctermbg=23 cterm=NONE
hi ModeMsg guifg=#2605fa guibg=#fafafa guisp=#fafafa gui=bold ctermfg=21 ctermbg=15 cterm=bold
hi CursorColumn guifg=NONE guibg=#210073 guisp=#210073 gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi Define guifg=#ffabc1 guibg=NONE guisp=NONE gui=NONE ctermfg=218 ctermbg=NONE cterm=NONE
hi Function guifg=#a9ff9e guibg=NONE guisp=NONE gui=bold ctermfg=157 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi PreProc guifg=#82cdff guibg=NONE guisp=NONE gui=NONE ctermfg=121 ctermbg=NONE cterm=NONE
hi Visual guifg=#adfaff guibg=#0000b8 guisp=#0000b8 gui=NONE ctermfg=159 ctermbg=4 cterm=NONE
hi MoreMsg guifg=#0affc6 guibg=NONE guisp=NONE gui=bold ctermfg=50 ctermbg=NONE cterm=bold
hi SpellCap guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi VertSplit guifg=#f0a3ff guibg=#50818f guisp=#50818f gui=bold ctermfg=219 ctermbg=66 cterm=bold
hi Exception guifg=#ffd8a6 guibg=NONE guisp=NONE gui=bold ctermfg=223 ctermbg=NONE cterm=bold
hi Keyword guifg=#eaff5e guibg=NONE guisp=NONE gui=bold ctermfg=191 ctermbg=NONE cterm=bold
hi Type guifg=#ce99ff guibg=NONE guisp=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=bold
hi DiffChange guifg=#00ffee guibg=#2e0059 guisp=#2e0059 gui=NONE ctermfg=14 ctermbg=53 cterm=NONE
hi Cursor guifg=#00aab3 guibg=#c7f4ff guisp=#c7f4ff gui=NONE ctermfg=37 ctermbg=195 cterm=NONE
hi SpellLocal guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#ffd49c guibg=#4c008f guisp=#4c008f gui=NONE ctermfg=223 ctermbg=54 cterm=NONE
hi PMenu guifg=#8f8ae6 guibg=#072a5e guisp=#072a5e gui=NONE ctermfg=104 ctermbg=17 cterm=NONE
hi SpecialKey guifg=#313194 guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi Constant guifg=#c096ff guibg=NONE guisp=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi DefinedName guifg=#af38ff guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Tag guifg=#82ffec guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
hi String guifg=#ffffff guibg=#160238 guisp=#160238 gui=NONE ctermfg=15 ctermbg=17 cterm=NONE
hi PMenuThumb guifg=#ff000d guibg=#78c2ff guisp=#78c2ff gui=NONE ctermfg=196 ctermbg=117 cterm=NONE
hi MatchParen guifg=#ffea75 guibg=NONE guisp=NONE gui=bold ctermfg=228 ctermbg=NONE cterm=bold
hi LocalVariable guifg=#8dff70 guibg=NONE guisp=NONE gui=NONE ctermfg=119 ctermbg=NONE cterm=NONE
hi Repeat guifg=#7b61ff guibg=NONE guisp=NONE gui=bold ctermfg=99 ctermbg=NONE cterm=bold
hi SpellBad guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Directory guifg=#bf00ff guibg=NONE guisp=NONE gui=bold ctermfg=129 ctermbg=NONE cterm=bold
hi Structure guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Macro guifg=#19fff0 guibg=NONE guisp=NONE gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=#f3e0ff guibg=#2a00a6 guisp=#2a00a6 gui=NONE ctermfg=225 ctermbg=19 cterm=NONE
hi TabLine guifg=#ddddfc guibg=#9093db guisp=#9093db gui=bold ctermfg=189 ctermbg=104 cterm=bold
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi cursorlinenr guifg=#ffdd00 guibg=NONE guisp=NONE gui=bold ctermfg=220 ctermbg=NONE cterm=bold
hi vimHiGroup  guifg=#ffe969 guibg=NONE guisp=NONE gui=bold ctermfg=220 ctermbg=NONE cterm=bold
" vimHiグループ
hi vimGroup guifg=#ffa73b guibg=NONE guisp=NONE gui=bold ctermfg=220 ctermbg=NONE cterm=bold
" vimグループ

