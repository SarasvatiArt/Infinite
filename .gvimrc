"""""＊神様ありがとうございます＊"""""
""""" VIMMASTER.平野貴裕様即神也 """""
set nocompatible	 """"" Vi-Improvedモード多分お約束
set noswapfile		 """"" スワップファイル作らない
set nobackup		 """"" バックアップファイル作らない
set undodir=/Users/th/.vim/undo
colorscheme PurpleTYPE 
""""" /Users/th/.vim/colors/#####TYPE.vim
syntax on            """"" シンタックスオン
"""""set transparency=51 """"" 透明度0〜100"
""""""""""""gvimのファイル保存ダイアログの初期ディレクトリ"""""""""""""""""""""""
":set browsedir=buffer  "カレントディレクトリが初期ディレクトリになります。
" set browsedir=/path/to/default/directory "PATHを直接指定
set browsedir=/Users/th/Desktop "初期保存ディレクトリ指定
":set browsedir=last "最後に保存したディレクトリを指定
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"#################### N7 コメントアウト#######################################
" ●  NEOBUNDLE ●  
 if has('vim_starting')
   if &compatible
     set nocompatible     
 endif
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif
 call neobundle#begin(expand('~/.vim/bundle/'))
 NeoBundleFetch 'Shougo/neobundle.vim'
""""" NeoBundle で管理するプラグインを追加します。
""""" NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'itchyny/lightline.vim'
call neobundle#end()
filetype plugin indent on
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call singleton#enable()			""""" タブで開く
"#################### END N7 コメントアウト ##################################
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
".vimrcに設定を沢山入れていると段々とVimの起動は遅くなります。
"プラグインを大量に入れるタイプの人は、Vim の起動に数秒から数十秒待たされるだろう。
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if has('unix') && !has('gui_running')
  " ESC後にすぐ反映されない対策
  inoremap <silent> <ESC> <ESC>
endif
" ● 愛用しているcolorschemeに直接記述してみました。
hi CursorIM  guifg=DarkBlue  guibg=SkyBlue gui=NONE  ctermfg=DarkBlue  ctermbg=White  cterm=reverse
hi Cursor  guifg=DarkBlue  guibg=white  gui=NONE  ctermfg=DarkBlue  ctermbg=White  cterm=reverse
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ● (),[],{},<>,””,’’,“入力&()の中にカーソル戻す
imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap “” “”<Left>
imap ” ”<Left>
imap <> <><Left>
imap “ “<Left>
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ● タブページ表示  0は常に非表示/1は複数の時にタブ表示2は常に表示
set showtabline=2 
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ● 不可視文字の表示記号指定
" set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮
set ambiwidth=double   "これ。n7は設定１ ➣ ➤ ➥ ➦ ➠ ➟ ⇐ ⇽ ⇦ ⇠ 
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ● 日本語の行の連結時には空白を入力しない
:set formatoptions=Mm
""""""""""""""" ● Java言語の標準のクラス名をハイライト""""""""""""""""""""""""""
let java_highlight_all=1
let java_space_errors=1 
""""" javaソース中に余分な空白がある時に、その空白をハイライトします。
""""" 綺麗なソースコードが好きな方、余分なスペースが嫌いな方へ。
let java_highlight_functions=1 
""""" メソッドの宣言文をハイライトします。
""""" 宣言文にjava.vim、javaid.vimによってハイライトされている
""""" Java標準クラス名が来た時は、 Java標準クラスのハイライトが優先されます。
""""" ブレースもハイライトするようになります。
""""""""""""""""""""" ● css3 syntax plugin用"""""""""""""""""""""""""""""""""""""
highlight VendorPrefix guifg=#00ffff gui=bold ctermfg=1 ctermbg=NONE cterm=bold "css3 syntax
match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/
" ● """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set enc=utf-8
set fencs=ucs-bom,utf-8,iso-2022-jp,euc-jp,cp932,utf-16le,utf-16,default,latin1
let $LANG='ja_JP.UTF-8'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2  """"" ●  画面下ステータス表示__行数
set statusline=%<%f\ %m%r%h%w
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
set statusline+=%=%l/%L,%c%V%8P
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cmdheight=1     """"" ●  コマンドライン表示__行数
set helpheight=777   """"" ●  ヘルプ表示__行数 全開）
set guifont=Rounded-X\ M+\ 2m\ light:h15	""""" ●  フォント
set lines=51		 """"" ● ウインドウ高さ設定
set columns=123	 """"" ● ウインドウ幅設定　
"set scrolloff=7 """"" ● 上下7行の視界を確保
set clipboard=unnamed,autoselect        """""  ● クリップボード環境設定
set clipboard=unnamed,unnamedplus       """"" ●  レジスタ指定無しでYank,Put出来るようにする
set wildmenu wildmode=list:longest,full """"" ●  コマンドモードでTABによるファイル名補完を有効
set hidden           """"" ●  変更中のファイルでも、保存しないで他のファイルを表示
set number		 """"" ●  行数表示
set ruler			 """"" ●  ステータスラインにカーソル位置表示
set autoindent		 """"" ●  新しい行のインデントを現在行と同じにする
set showmatch		 """" ● " 対応する括弧を強調表示
set list			 """"" ●  不可視文字を表示
set listchars=tab:►\ ,extends:❯,precedes:❮       " ● お手本		,eol:↲
"`````http://vimblog.hatenablog.com/entry/vimrc_set_display_options
""""" ↲  ▸  ‹  «  ›  »  ⇤  ⤆  ¶  †  ✝  ✍  ☖  ⚛  ⚖   
""""" ❖   ☆   ✓    ◇    □  ♾   ➢   ➣   ➤   ➥   ➦   ➠   ➟  ⇐   ⇽
""""" ⇦   ⇠  ⟵    ↽    ⥚   ⟽    ⤆     ⇧   ⇪  ⇵  ⤶  ↵  ↲  
set autoread		 """""  ● オートリロード
set whichwrap=b,s,h,l,<,>,[,]  """"" 左右から上下行移動可能にする
set cursorline		 """""  ● カーソルライン発光
"set cursorcolumn	 """"" ●  カーソル位置のカラムの背景色を変える
""""" set expandtab		"""""  ● タブを空白に変える
set tabstop=5		 """""  ● タブの幅
set shiftwidth=5	 """""  ● インデント幅
""""" set softtabstop=5	 """""  ● 連続空白にタブバックスペースが動く幅?
set autoindent		 """""  ● オートインデント
set smartindent	 """"" ●  スマートインデント
set hlsearch  		 """""  ● 検索文字のハイライト
set incsearch 		 """"" ●  インクリメンタルサーチ
set smartcase 		 """"" ●  大文字小文字を含む場合は区別する
set wrapscan  		 """"" ●  ラップスキャン 繰り返し検索
set gdefault  		 """"" ●  置換 g オプションをデフォルトで有効
set ignorecase		 """"" ●  大文字と小文字の区別をしない。
set mouse=a		 """"" ●  マウス入力 ON 
set history=510      """"" ●  コマンド履歴を510件保存
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""" #####  ● ビープ音無効
set visualbell t_vb= 
set noerrorbells 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" #####  ● 自動的に閉じ括弧を入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" #####  ● 一発 Vimrc Open
nnoremap <Space>. :<C-u>tabedit /Users/th/.gvimrc<CR>
""""" nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
""""" (.vimrc/.gvimrc) 一発で開けるようにマッピングします。
""""" 上記では「スペース .(ドット)」で開くようにしています。
""""" $MYVIMRCで上手く開かない場合は.vimrcへのフルパスを書きましょう。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" #####  ● 挿入モード時、ステータスラインの色を変更　--その１--
let g:hi_insert = 'highlight StatusLine guifg=#85fff5 guibg=#0077ff gui=bold ctermfg=white ctermbg=blue cterm=bold'
if has('syntax')
augroup InsertHook
autocmd!
autocmd InsertEnter * call s:StatusLine('Enter')
autocmd InsertLeave * call s:StatusLine('Leave')
augroup END
endif
let s:slhlcmd = ''
function! s:StatusLine(mode)
if a:mode == 'Enter'
silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
silent exec g:hi_insert
else
highlight clear StatusLine
silent exec s:slhlcmd
endif
endfunction
function! s:GetHighlight(hi)
redir => hl
exec 'highlight '.a:hi
redir END
let hl = substitute(hl, '[\r\n]', '', 'g')
let hl = substitute(hl, 'xxx', '', '')
return hl
endfunction
"https://sites.google.com/site/fudist/Home/vim-nihongo-ban/-vimrc-sample
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"#####  ● カーソル位置復元
if has("autocmd")
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal! g'\"" |
\ endif
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"#####  ● インサート時ステータスラインの色変更　--その２--
"augroup InsertHook
"autocmd!
"autocmd InsertEnter * highlight StatusLine guifg= #ccdc90 guibg= #2E4340 ctermfg=cyan
"autocmd InsertLeave * highlight StatusLine guifg= #2E4340 guibg= #ccdc90 ctermfg=white
"augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start	 " ● Backspaceキーの影響範囲に制限を設けない
"set sidescrolloff=15			 " ● 左右スクロール時の視界を確保
"set sidescroll=1				 " ● 左右スクロールは一文字づつ行う
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"#####  ● 全角スペースの表示
"function! ZenkakuSpace()
"highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
"endfunction
"if has('syntax')
"augroup ZenkakuSpace
"autocmd!
"autocmd ColorScheme * call ZenkakuSpace()
"autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
"augroup END
"call ZenkakuSpace()
"endif
""""" http://inari.hatenablog.com/entry/2014/05/05/231307
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ● \cで行の先頭にコメントをつけたり外したりできる
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" ##### ●  SyntaxInfo コマンド追加スクリプト			 すっげ〜〜！！！
function! s:get_syn_id(transparent)
  let synid = synID(line("."), col("."), 1)
  if a:transparent
    return synIDtrans(synid)
  else
    return synid
  endif
endfunction
function! s:get_syn_attr(synid)
  let name = synIDattr(a:synid, "name")
  let ctermfg = synIDattr(a:synid, "fg", "cterm")
  let ctermbg = synIDattr(a:synid, "bg", "cterm")
  let guifg = synIDattr(a:synid, "fg", "gui")
  let guibg = synIDattr(a:synid, "bg", "gui")
  return {
        \ "name": name,
        \ "ctermfg": ctermfg,
        \ "ctermbg": ctermbg,
        \ "guifg": guifg,
        \ "guibg": guibg}
endfunction
function! s:get_syn_info()
  let baseSyn = s:get_syn_attr(s:get_syn_id(0))
  echo "name: " . baseSyn.name .
        \ " ctermfg: " . baseSyn.ctermfg .
        \ " ctermbg: " . baseSyn.ctermbg .
        \ " guifg: " . baseSyn.guifg .
        \ " guibg: " . baseSyn.guibg
  let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  echo "link to"
  echo "name: " . linkedSyn.name .
        \ " ctermfg: " . linkedSyn.ctermfg .
        \ " ctermbg: " . linkedSyn.ctermbg .
        \ " guifg: " . linkedSyn.guifg .
        \ " guibg: " . linkedSyn.guibg
endfunction
command! SyntaxInfo call s:get_syn_info()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" 五井先生有り難う御座います。""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"この下特にアンドロイド用	人類即神也	1-2
" ●  現バッファのファイルをインテントを使用して外部アプリで開く
nnoremap <silent> gka :AndroidIntent<CR>
command! -nargs=* AndroidIntent :call AndroidIntent(<q-args>)
function! AndroidIntent(file)
  let file = a:file == '' ? expand('%:p') : fnamemodify(a:file, ':p')
  let file = escape(file, " '`$")
  let cmd = 'am start --user 0 -a android.intent.action.VIEW -t text/plain -d '.file
  let ret = system(cmd)
endfunction
"```````````````````````````````````````````````````````````````````````````
" ●  クリップボードへインテントを使用してヤンク(コピー)	人類即神也	2-2
nnoremap <silent> gY :AndroidIntentText<CR>
vnoremap <silent> gY y:AndroidIntentText<CR>
command! -nargs=* -bang AndroidIntentText :call AndroidIntentText(<q-args>)
function! AndroidIntentText(text)
  let str = a:text != "" ? a:text : @"
  let str = iconv(str, &enc, "UTF-8")
  let str = escape(str, '`"$\')
  let cmd = printf('am start --user 0 -a android.intent.action.SEND -t text/plain --es android.intent.extra.TEXT "%s"', str)
  let ret = system(cmd)
endfunction
"###########################################################################
" ●  トグル＃relative/absolute
function! g:ToggleNuMode()
if(&rnu == 1)
set nornu
else
set rnu
endif
endfunc
"and a Ctrl+L key map
nnoremap <C-L> :call g:ToggleNuMode()<cr> 
"###########################################################################
"```````````````````````````````````````````````````````````````````````````
" ● 色指定場所　~/.vim/color/PurpleTYPE.vimとして保存
" ● カラースキーム名は g:colors_name 一致させる
"~~~~~~~~~~~~~~~ ● filetypeの自動検出(最後の方に書く)~~~~~~~~~~~~~~~~~~~~~~
filetype on
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" 五井先生有り難う御座います。"""""""""" 人類即神也大成就 """"""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"###########################################################################
