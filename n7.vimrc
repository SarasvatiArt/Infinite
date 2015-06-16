"""""＊神様ありがとうございます＊"""""
set nocompatible	 """"" Vi-Improvedモード多分お約束
set noswapfile		 """"" スワップファイル作らない
set nobackup		 """"" バックアップファイル作らない
"set undodir=/Users/th/.vim/undo
colorscheme PurpleTerm
" /Users/th/.vim/colors/#####TYPE.vim
syntax on            """"" シンタックスオン
"""""set transparency=51 """"" 透明度0〜100"
""""""""""""gvimのファイル保存ダイアログの初期ディレクトリ"""""""""""""""""""""""
" 	set browsedir=buffer  "カレントディレクトリが初期ディレクトリになります。
" 	set browsedir=/path/to/default/directory "PATHを直接指定
" set browsedir=/Users/th/Desktop "初期保存ディレクトリ指定
" 	set browsedir=last "最後に保存したディレクトリを指定
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"#################### N7 コメントアウト#######################################
" ● NEOBUNDLE ●  
" if has('vim_starting')
"   if &compatible
"     set nocompatible     
" endif
"   set runtimepath+=~/.vim/bundle/neobundle.vim/
" endif
" call neobundle#begin(expand('~/.vim/bundle/'))
" NeoBundleFetch 'Shougo/neobundle.vim'
""""" NeoBundle で管理するプラグインを追加します。
" NeoBundle 'Shougo/unite.vim.git'
" NeoBundle 'itchyny/lightline.vim'
" call neobundle#end()
" filetype plugin indent on
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+client server -> nexus7
"call singleton#enable()			""""" タブで開く
"#################### END N7 コメントアウト ##################################
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
".vimrcに設定を沢山入れていると段々とVimの起動は遅くなります。
"プラグインを大量に入れるタイプの人は、Vim の起動に数秒から数十秒待たされるだろう。
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if has('unix') && !has('gui_running')
  " ESC後にすぐ反映されない対策
  inoremap <silent> <ESC> <ESC>
endif
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ● (),[],{},<>,””,’’,“入力&()の中にカーソル戻す
imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap “” “”<Left>
imap ” ”<Left>
imap <> <><Left>
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
""""""""""""""""""""""""""""""
" Android Terminal Emulator改変版用スクリプト
""""""""""""""""""""""""""""""
scriptencoding utf-8
" set nocompatible

" OSチェック
if !executable("getprop") || system("getprop net.bt.name") !~ 'Android'
  finish
endif

" バージョン判定
 if system("getprop ro.build.version.release") > 4
 endif
" 機種判定
 if system("getprop ro.product.model") =~ 'Nexus 7'
 endif
 if system("getprop persist.sys.language") =~ '^ja\n'
"   " 日本語環境
   set fencs=ucs-bom,utf-8,iso-2022-jp,euc-jp,cp932,utf-16le,utf-16,default,latin1
   let $LANG='ja_JP.UTF-8'
 endif

""""""""""""""""""""""""""""""
" マウスを有効にする
 set mouse=a

" 終了時に端末表示色を再設定 (端末エミュレータのバグ対策)
 au VimLeave * let saved_t_Co=&t_Co|let &t_Co=1|let &t_Co=saved_t_Co

""""""""""""""""""""""""""""""
" androidインテント
" 現バッファのファイルをandroidアプリへのインテントで開く
" (インテントの受け先を自動選択にするとうまく動作しない場合があります)
 nnoremap <silent> <F7> :AndroidIntent<CR>
 nnoremap <silent> <F8> :AndroidIntent!<CR>
command! -nargs=* -bang AndroidIntent :call AndroidIntent(<bang>0, <q-args>)
function! AndroidIntent(mode, file)
  let file = a:file == '' ? expand('%:p') : fnamemodify(a:file, ':p')
  let action = a:mode == 0 ? 'VIEW' : 'EDIT'
  let file = escape(file, " '`$")
  let cmd = printf('am start --user 0 -a android.intent.action.%s -t text/plain -d %s', action, file)
  redraw|echo 'sharing file...'
  let ret = system(cmd)
endfunction

"-----------------------------
" 以降はATE改変版でのみ有効
"-----------------------------
if !exists("$APPFILES") || !filereadable($APPFILES."/vimrc")
  finish
endif

""""""""""""""""""""""""""""""
" copy/paste
nnoremap <silent> "*dd dd:ATEMod copy<CR>
vnoremap <silent> "*d   d:ATEMod copy<CR>
nnoremap <silent> "*yy yy:ATEMod copy<CR>
vnoremap <silent> "*y   y:ATEMod copy<CR>
nnoremap <silent> "*p    :ATEMod paste<CR>
vnoremap <silent> "*p   d:ATEMod Paste<CR>
let s:clipboard = '~/.clipboard'
let s:atep = 'p'
let s:count = 1
command! -nargs=* -count ATEMod :call ATEMod(<q-args>)
function! ATEMod(cmd)
  let lazyredraw = &lazyredraw
  set lazyredraw
  if (a:cmd =~ '^[0-9]\+$')
    let cmd = printf('echo -n -e "\0033[%st"', a:cmd)
    exe 'silent !'.cmd
  elseif (a:cmd == "copy")
    let str = @"
    let str = iconv(str, &enc, "UTF-8")
    redraw|echo 'copy text to clipboard'
    call writefile(split(str, "\n"), fnamemodify(s:clipboard, ':p'), 'b')
    call ATEMod(3)
  elseif (a:cmd == 'cb2file')
    call ATEMod(33)
  elseif (a:cmd ==# 'paste')
    let s:atep = 'p'
    let s:count = v:count > 0 ? v:count : 1
    call ATEMod(333)
  elseif (a:cmd ==# 'Paste')
    let s:atep = 'P'
    let s:count = v:count > 0 ? v:count : 1
    call ATEMod(333)
  elseif (a:cmd == '_paste')
    let list = readfile(fnamemodify(s:clipboard, ':p'))
    let str = join(list, "\n")
    let str = iconv(str, "UTF-8", &enc)
    let @" = str
    redraw | echo ''
    let cmd = s:count > 1 ? s:count : ''
    call feedkeys(cmd.s:atep, 't')
    let s:count = 1
  endif
  let &lazyredraw = lazyredraw
endfunction

""""""""""""""""""""""""""""""
" ノーマルモード移行で英数確定入力(ソフトキーボード)

" エスケープシーケンス
" |    | 効果           | 想定使用状況                | 備考
" | 50 | デフォルト     |                             |
" | 51 | 英数確定入力   | IMEが英数確定入力でない場合 | *日本語入力不可
" | 52 | 英数入力に設定 | IMEが英数確定入力の場合     |
" | 53 | 英数確定入力   | Google日本語入力の場合      | *Vimノーマルモード専用
" ※Google日本語入力の英数確定入力は実験的なものです
"
" 実際の効果は
" echo -n -e "\0033[51t"
" のようにshellから実行して確認してみてください。
" Vimからは :ATEMod 51 で実行可能です。
" ただし「設定」のインプットメソッドが「単語ベース」でないと効果はありません。
"
" | 5  | 自動設定(ノーマルモード) | *ATOK=52, その他=51
" | 55 | 自動設定(挿入モード)     | *Wnn系=52, その他=50

" 以下のコメントのaugroupまでを有効化すると自動英数確定入力になります
" ATOKとWnn Keyboard Labでは自動設定で特に問題ないようですが、環境に応じてスク
" リプト設定を適切に変更してみてください。
"
" " ノーマルモード移行で英数入力(ソフトキーボード)
" " ノーマルモード
 let s:ImeNormal = 5
" " 挿入モード
 let s:ImeInsert = 55
" " Vim終了後
 let s:ImeVimLeave = 50
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
 augroup AndroidIME
   au!
   au VimEnter    * call ATEMod(s:ImeNormal)
   au InsertEnter * call ATEMod(s:ImeInsert)
   au InsertLeave * call ATEMod(s:ImeNormal)
   au CmdWinEnter * call ATEMod(s:ImeInsert)
   au CmdWinLeave * call ATEMod(s:ImeNormal)
   au VimLeavePre * call ATEMod(s:ImeVimLeave)
 augroup END
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 以下の「デフォルト/英数確定入力トグル」までを有効にすると、キーマップから設
" 定値を変更可能になります。
" Wnn Keyboard labで主に日本語を入力したい場合は、サンプルではgzにマップしてい
" る「Wnn日本語入力優先切替(挿入モード)」で切り替えると良いでしょう。
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" " デフォルト/英数確定入力トグル
 nnoremap <silent> gx :call <SID>setInputType('Toggle')<CR>
" " Wnn日本語入力優先切替(挿入モード)
 nnoremap <silent> gz :call <SID>setInputType('WnnToggle')<CR>
"
 let s:ImeNormalToggle = s:ImeNormal != 50 ? s:ImeNormal : 5
 let s:ImeInsertToggle = s:ImeInsert != 50 ? s:ImeInsert : 55
 function! s:setInputType(mode)
   if a:mode == 'Auto'
     let s:ImeNormal = 5
     call ATEMod(s:ImeNormal)
     redraw|echo 'ImeAuto'
   elseif a:mode == 'Toggle'
     if s:ImeNormal != 50
         let s:ImeNormalToggle = s:ImeNormal
     endif
     let s:ImeNormal = s:ImeNormal == s:ImeNormalToggle ? 50 : s:ImeNormalToggle
     call ATEMod(s:ImeNormal)
     redraw|echo s:ImeNormal == 50 ? 'ImeNormal' : 'ImeForceEn'
   elseif a:mode == 'WnnToggle'
     let s:ImeInsert = s:ImeInsert == s:ImeInsertToggle ? 50 : s:ImeInsertToggle
     redraw|echo s:ImeInsert == 50 ? 'ImeInsertWnnJp' : 'ImeInsertWnnForceEn'
   endif
 endfunction

" (注意)
" Google日本語入力用の53では、英数確定入力化処理の関係で以下の制限があります。
" ・ノーマルモードではEnter,BS等2回押さないと有効にならないキーがあります。
" ・ノーマルモードで数値/記号などに切り替えると最後に入力したキーが再び入力さ
" れることがあります。
" 対処として以下の方法があります。
"
" Android 5.0以降
" スクリプトは使用せずに、Googleキーボード(英語)を確定入力に設定して、言語切替
" ボタン(地球マーク)で日本語IMEとGoogleキーボード(英語)とを適宜切替えするなど
" してみてください。(スクリプトは併用可能です)
"
" Android 4.x以前
" 「デフォルト/英数確定入力トグル」かメニューのIMEリセットで通常入力とトグル切
" 替可能なので、状況に応じて変更しながら使用してみてください。
" IMEリセットはアクションバーボタンにも設定可能です。

""""""""""""""""""""""""""""""
" ノーマルモード移行で英数入力(ハードウェアキーボード)
" im_control.vim
" https://github.com/fuenor/im_control.vim

let g:IM_CtrlMode = 1
let g:IM_vi_CooperativeMode  = 1
let g:IM_JpFixModeAutoToggle = 0
" inoremap <silent> <C-j> <C-r>=IMState('Toggle')<CR>

function! IMCtrl(cmd)
  let cmd = a:cmd
  if cmd == 'On'
    call ATEMod(1)
  elseif cmd == 'Off'
    call ATEMod(0)
  elseif cmd == 'Toggle'
    call ATEMod(2)
  endif
  return ''
endfunction
" 神様有難う御座います
