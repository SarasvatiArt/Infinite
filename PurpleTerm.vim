" Vim color file - PurpleTerm
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "PurpleTerm"

"hi clear -- no settings --
"hi CTagsClass -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi CTagsImport -- no settings --
"hi CTagsMember -- no settings --
"hi EnumerationName -- no settings --
"hi EnumerationValue -- no settings --
hi Boolean guifg=#54ffaf guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi Character guifg=#ffcf70 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi Comment guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Conditional guifg=#add690 guibg=#cf6ecf guisp=#cf6ecf gui=bold ctermfg=150 ctermbg=170 cterm=bold
hi Constant guifg=#75ffe8 guibg=NONE guisp=NONE gui=NONE ctermfg=122 ctermbg=NONE cterm=NONE
hi Cursor guifg=#282a6e guibg=#FFFFFF guisp=#FFFFFF gui=bold ctermfg=17 ctermbg=15 cterm=bold
hi CursorColumn guifg=NONE guibg=#210073 guisp=#210073 gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi CursorLine guifg=NONE guibg=#1e0052 guisp=#1e0052 gui=NONE ctermfg=NONE ctermbg=235 cterm=underline
hi cursorlinenr guifg=#ffdd00 guibg=NONE guisp=NONE gui=bold ctermfg=220 ctermbg=NONE cterm=bold
hi Debug guifg=#00ff73 guibg=NONE guisp=NONE gui=NONE ctermfg=48 ctermbg=NONE cterm=NONE
hi Define guifg=#ffabc1 guibg=NONE guisp=NONE gui=NONE ctermfg=218 ctermbg=NONE cterm=NONE
hi DefinedName guifg=#af38ff guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#61f2ff guibg=NONE guisp=NONE gui=NONE ctermfg=87 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#fff2ff guibg=#cca7bd guisp=#cca7bd gui=NONE ctermfg=15 ctermbg=65 cterm=NONE
hi DiffChange guifg=#4fe8bf guibg=#353573 guisp=#353573 gui=NONE ctermfg=158 ctermbg=236 cterm=NONE
hi DiffDelete guifg=#5ba896 guibg=#699191 guisp=#699191 gui=NONE ctermfg=152 ctermbg=60 cterm=NONE
hi DiffText guifg=#ffffa3 guibg=#94946e guisp=#94946e gui=NONE ctermfg=229 ctermbg=234 cterm=NONE
hi Directory guifg=#bf00ff guibg=NONE guisp=NONE gui=bold ctermfg=129 ctermbg=NONE cterm=bold
hi Error guifg=#ffd49c guibg=#4c008f guisp=#4c008f gui=NONE ctermfg=223 ctermbg=54 cterm=NONE
hi ErrorMsg guifg=#ffffff guibg=#e370f5 guisp=#e370f5 gui=NONE ctermfg=53 ctermbg=213 cterm=NONE
hi Exception guifg=#ffd8a6 guibg=NONE guisp=NONE gui=bold ctermfg=223 ctermbg=NONE cterm=bold
hi Float guifg=#1ef5e3 guibg=#002438 guisp=#002438 gui=NONE ctermfg=50 ctermbg=23 cterm=NONE
hi FoldColumn guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi Folded guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi Function guifg=#91ff82 guibg=NONE guisp=NONE gui=bold ctermfg=120 ctermbg=NONE cterm=bold
hi Identifier guifg=#ff875f guibg=NONE guisp=NONE gui=NONE ctermfg=209 ctermbg=NONE cterm=NONE
hi Ignore guifg=#8ec3de guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Include guifg=#2ad100 guibg=NONE guisp=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi IncSearch guifg=#ffadec guibg=#3e0e42 guisp=#3e0e42 gui=NONE ctermfg=225 ctermbg=66 cterm=NONE
hi Keyword guifg=#ffe15e guibg=NONE guisp=NONE gui=bold ctermfg=221 ctermbg=NONE cterm=bold
hi Label guifg=#e6007b guibg=NONE guisp=NONE gui=bold ctermfg=161 ctermbg=NONE cterm=bold
hi LineNr guifg=#5f5f87 guibg=#262626 guisp=#262626 gui=NONE ctermfg=60 ctermbg=235 cterm=NONE
hi LocalVariable guifg=#8dff70 guibg=NONE guisp=NONE gui=NONE ctermfg=119 ctermbg=NONE cterm=NONE
hi Macro guifg=#19fff0 guibg=NONE guisp=NONE gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#ffea75 guibg=NONE guisp=NONE gui=bold ctermfg=228 ctermbg=NONE cterm=bold
hi ModeMsg guifg=#584da1 guibg=#fafafa guisp=#fafafa gui=bold ctermfg=97 ctermbg=15 cterm=bold
hi MoreMsg guifg=#0affc6 guibg=NONE guisp=NONE gui=bold ctermfg=50 ctermbg=NONE cterm=bold
hi NonText guifg=#05c9ff guibg=NONE guisp=NONE gui=italic ctermfg=45 ctermbg=NONE cterm=NONE
hi Normal guifg=#fcfcff guibg=#262626 guisp=#262626 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
hi Number guifg=#00f2ff guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi Operator guifg=#ffff87 guibg=NONE guisp=NONE gui=bold ctermfg=228 ctermbg=NONE cterm=bold
hi PMenu guifg=#9796ed guibg=#353e73 guisp=#353e73 gui=NONE ctermfg=104 ctermbg=60 cterm=NONE
hi PMenuSbar guifg=#884ca6 guibg=#3e46ad guisp=#3e46ad gui=NONE ctermfg=97 ctermbg=61 cterm=NONE
hi PMenuSel guifg=#b8ffff guibg=#4287ff guisp=#4287ff gui=bold ctermfg=159 ctermbg=69 cterm=bold
hi PMenuThumb guifg=#ff000d guibg=#9187fa guisp=#9187fa gui=NONE ctermfg=196 ctermbg=105 cterm=NONE
hi PreCondit guifg=#ff96ff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
hi PreProc guifg=#63ffdb guibg=NONE guisp=NONE gui=NONE ctermfg=86 ctermbg=NONE cterm=NONE
hi Question guifg=#e6a6f0 guibg=#4d54b0 guisp=#4d54b0 gui=NONE ctermfg=225 ctermbg=60 cterm=NONE
hi Repeat guifg=#7b61ff guibg=NONE guisp=NONE gui=bold ctermfg=99 ctermbg=NONE cterm=bold
hi Search guifg=#17f3ff guibg=#875f00 guisp=#875f00 gui=NONE ctermfg=123 ctermbg=66 cterm=NONE
hi SignColumn guifg=#00d0fa guibg=#536991 guisp=#536991 gui=NONE ctermfg=45 ctermbg=60 cterm=NONE
hi Special guifg=#f2a1ff guibg=NONE guisp=NONE gui=NONE ctermfg=219 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#f896ff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
hi SpecialComment guifg=#ff8800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#261f78 guibg=#110026 guisp=#110026 gui=NONE ctermfg=59 ctermbg=235 cterm=NONE
hi SpellBad guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi SpellCap guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi SpellLocal guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi SpellRare guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Statement guifg=#ffff87 guibg=NONE guisp=NONE gui=bold ctermfg=228 ctermbg=NONE cterm=bold
hi StatusLine guifg=#fadeff guibg=#5f5faf guisp=#5f5faf gui=bold ctermfg=225 ctermbg=237 cterm=bold
hi StatusLineNC guifg=#42f5bc guibg=#00425c guisp=#00425c gui=bold ctermfg=104 ctermbg=236 cterm=bold
hi StorageClass guifg=#52ff91 guibg=NONE guisp=NONE gui=bold ctermfg=84 ctermbg=NONE cterm=bold
hi String guifg=#ffffff guibg=#5f5f87 guisp=#5f5f87 gui=NONE ctermfg=189 ctermbg=237 cterm=NONE
hi Structure guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi TabLine guifg=#b8b8ff guibg=#5c639c guisp=#5c639c gui=bold ctermfg=249 ctermbg=241 cterm=bold
hi TabLineFill guifg=#b8ffff guibg=#5f5faf guisp=#5f5faf gui=bold ctermfg=159 ctermbg=237 cterm=bold
hi TabLineSel guifg=#ffffff guibg=#358afa guisp=#358afa gui=bold ctermfg=60 ctermbg=189 cterm=bold
hi Tag guifg=#82ffec guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
hi Title guifg=#7ffff2 guibg=NONE guisp=NONE gui=bold ctermfg=123 ctermbg=NONE cterm=bold
hi Todo guifg=#ffb2fc guibg=#184fbd guisp=#184fbd gui=NONE ctermfg=219 ctermbg=4 cterm=NONE
hi Type guifg=#af87ff guibg=NONE guisp=NONE gui=bold ctermfg=141 ctermbg=NONE cterm=bold
hi Typedef guifg=#035fff guibg=NONE guisp=NONE gui=bold ctermfg=27 ctermbg=NONE cterm=bold
hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Union guifg=#4cc3ff guibg=#6b61b0 guisp=#6b61b0 gui=NONE ctermfg=81 ctermbg=61 cterm=NONE
hi VertSplit guifg=#397ad4 guibg=#0e063d guisp=#0e063d gui=bold ctermfg=235 ctermbg=234 cterm=bold
hi vimGroup guifg=#ffa73b guibg=NONE guisp=NONE gui=bold ctermfg=214 ctermbg=NONE cterm=bold
hi vimHiGroup  guifg=#ffe969 guibg=NONE guisp=NONE gui=bold ctermfg=227 ctermbg=NONE cterm=bold
hi Visual guifg=#adfaff guibg=#0000b8 guisp=#0000b8 gui=NONE ctermfg=159 ctermbg=4 cterm=NONE
hi VisualNOS guifg=#30ffdd guibg=#3636ff guisp=#3636ff gui=underline ctermfg=50 ctermbg=13 cterm=underline
hi WarningMsg guifg=#ca29ff guibg=#f0a888 guisp=#f0a888 gui=NONE ctermfg=13 ctermbg=216 cterm=NONE
hi WildMenu guifg=#77f75e guibg=#6ea3b8 guisp=#6ea3b8 gui=NONE ctermfg=119 ctermbg=67 cterm=NONE
