"""""＊神様ありがとうございます＊"""""
" ##### VIMRC ##### 510行 2015/06/19 (金) 05:01 357 lines
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
""""""""""""""""""""""""""""""
"scriptencoding utf-8
"set nocompatible
"" OSチェック
"if !executable("getprop") || system("getprop net.bt.name") !~ 'Android'
"  finish
"endif
"" バージョン判定
" if system("getprop ro.build.version.release") > 4
" endif
"" 機種判定
" if system("getprop ro.product.model") =~ 'Nexus 7'
" endif
" if system("getprop persist.sys.language") =~ '^ja\n'
"" 日本語環境
"   set fencs=ucs-bom,utf-8,iso-2022-jp,euc-jp,cp932,utf-16le,utf-16,default,latin1
"   let $LANG='ja_JP.UTF-8'
" endif
""""""""""""""""""""""""""""""
set enc=utf-8
set noswapfile		 """"" スワップファイル off
set nobackup		 """"" バックアップファイル off
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set undodir=/Users/th/.vim/undo    """"" undo~fileの保存場所指定 N7off // MacOn
colorscheme PurpleTYPE	     """"" VIM カラースキーム〓〓〓〓〓#####〓〓〓〓〓
""~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ＊ 色指定場所  ~/.vim/color/PurpleTYPE.vimとして保存
" ＊ カラースキーム名は g:colors_name 一致させる
" ＊ /Users/th/.vim/colors/#####TYPE.vim
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
syntax on                """"" ● シンタックス          透明度 N7off // MacOn
set transparency=51 """"" ●  透明度0〜100"            〓〓〓〓〓#####〓〓〓〓〓
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set guifont=Rounded-X\ M+\ 2m\ light:h15 """" ● フォント  ___check___set___
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
nnoremap <F5> :<C-u>source ~/.gvimrc<CR>
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"--- <F10> タイムスタンプを挿入してinsertモードへ移行 ----
nmap <F10> <ESC>i<C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR><CR>
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set clipboard=unnamed,autoselect
set clipboard=unnamedplus
" ● ##### ___Find___ #####						    __check__N7off // MacOn
call singleton#enable()			""""" 全てをタブで開く 〓〓〓〓〓#####〓〓〓〓〓
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ##### .vimrcに設定を沢山入れていると段々とVimの起動は遅くなります。   #####
" ##### プラグインを大量に入れると、Vim の起動に数秒から数十秒。。。<<< #####
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ● ステータスが、ESC後にすぐ反映されない場合の対処(map) 〓〓〓〓〓#####〓〓〓〓〓
"'''if has('unix') && !has('gui_running')
"'''inoremap <silent> <ESC> <ESC>						N7off_testMac 
"'''endif											test again N7
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ● ___fix___   {} [] ()   ///  <  ////   " "" 括弧内に移動、かな。。。
imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap “” “”<Left>
imap ” ”<Left>
imap <> <><Left>
""""" #####  ● 自動的に閉じ括弧を入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ● タブ表示  0 非表示, 1 複数表示, 2 常表示
set showtabline=2  " 常表示
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 " ● Deleteは別の方法
set backspace=indent,eol,start
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set ambiwidth=double " ➣ ➤ ➥ ➦ ➠ ➟ ⇐ ⇽ ⇦ ⇠ 
set listchars=tab:✍\ ,extends:❯,precedes:❮ 
""""" ↲  ▸  ‹  «  ›  »  ⇤  ⤆  ¶  †  ✝  ✍  ☖  ⚛  ⚖   
""""" ❖   ☆   ✓    ◇    □  ♾   ➢   ➣   ➤   ➥   ➦   ➠   ➟  ⇐   ⇽
""""" ⇦   ⇠  ⟵    ↽    ⥚   ⟽    ⤆     ⇧   ⇪  ⇵  ⤶  ↵  ↲  
"	🁢 🀰 🀫  ☗   ☖   ✦  ⦁⦁⦁⦁⦁⦁⦁ ⚛  ☮  ♦︎
" ♥︎ ♣︎ ♠︎  ✺ ✹ ✸ ✵ ✷ ✶ ✮ ✭ ✬ ✫ ✪ ✩ ✡ ✯ ⭐︎ ☆ ★ ✧ ✦ ✾ ❃ ❋ ✳︎ ✴︎ ❇︎ ❈ ※ ❅ ❆ ❄︎ ✿ ❀
" ❁ ❂ ✓ ✔︎ ✕ ✖︎ ✗ ✘ ﹅ ﹆ ❍ ❏ ❐ ❑ ❒ ✰ ❤︎ ❥  ⎯   ⏐  ⎯   ⎯      ⎯   
"  〓  ⚡︎     ♻︎    〱 🅼  ㋐㋔㋒㋓㋑  ⒶⓄⓊⒺⒾ  🄰🄾🅄🄴🄸   ⬅︎     
" 【  】  〗 〖 ］ ［ [ ] > < » « 〘 〙 〕〔 』 『 」「 ｠｟ ]  ☠    ✚   ✙   ✧  ✦ 
"  ● 不可視文字の表示記号指定
"  set listchars=tab:▸\,eol:↲,extends:❯,precedes:❮
" ##### eol:文字	行末の表示に使われる文字。指定されないと、行末には何も表示されない。
" ##### tab:2文字	タブ文字の表示に使われる文字。1文字目は1回だけ使われる。
" 	   2文字目はタブが通常占めるだけの空白を埋めるまで繰り返し表示される。
" 	   "tab:>-" とすると、タブが4文字の設定では ">---" となる。
" ##### trail:文字	行末の空白の表示に使われる文字。指定されないと、行末の空白見えない。
" ##### extends:文字	'wrap' がオフで、行が画面の右端よりも伸びているときに、最終列に表示される文字。
" ##### precedes:文字	'wrap' がオフで、最前列で表示されている最初の文字より前にテキストが存在するとき
" ##### {訳注: 上の行の末尾が画面の右端より伸びているとき} に、最前列に表示される文字。
" ##### conceal:文字	'conceallevel' が 1 のときに Conceal されたテキストの代わりに表示される文字。
" ##### nbsp:文字	non-breakable な空白(文字 0xA0, 160)を示す文字。指定されない場合は空白のまま。
" ##### {訳注: 0xA0はLatin1でnon-breakableな空白を表す}
" ＊＊＊ 文字 ':' と ',' は使えない。'encoding' が "utf-8" のときはUTF-8の文字が使える。
" 	    そうでないときはprintableな文字 {訳注: 文書先頭を参照} だけが使える。
" ＊＊＊ 全ての文字は幅が1でなければならない。
"  （例）[set lcs=tab:>-,trail:-]  [set lcs=tab:>-,eol:<,nbsp:%]  [set lcs=extends:>,precedes:<]
" 	　  "eol", "extends", "precedes" には強調表示グループ "NonText" が、  ＊ |hl-NonText|
" 	 　 "nbsp", "tab" と "trail" には "SpecialKey" が適用される。         ＊ |hl-SpecialKey|
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ● 日本語の行の連結時には空白を入力しない ___CHECK-UP___
set formatoptions=Mm
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set laststatus=2  "ステータス表示 'laststatus' 'ls'
" 0: 表示しない 1: ウィンドウの数が2以上で表示 (初期設定) 2: 常に表示
set statusline=%<%f\ %m%r%h%w
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
set statusline+=%=%l/%L,%c%V%8P
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set cmdheight=1      """"" ●  コマンドライン表示行数   数値  (初期設定は 1 )
set helpheight=777   """"" ●  ヘルプ表示行数 
set lines=51		 """"" ● ウインドウ高さ
set columns=123      """"" ● ウインドウ幅				N7off/MacOn 5 lines　
set scrolloff=5      """"" ● 上下行の視界を確保         〓〓〓〓〓#####〓〓〓〓〓
set wildmenu wildmode=list:longest,full " ● コマンドモードでTABによるファイル名補完を有効
set hidden           """"" ● 変更中のファイルでも、保存しないで他のファイルを表示
set number		 """"" ● 行数表示
set ruler			 """"" ● ステータスラインにカーソル位置表示
set autoindent		 """"" ● 新しい行のインデントを現在行と同じにする
set showmatch		 """"" ● 対応する括弧を強調表示
set list			 """"" ● 不可視文字を表示
set autoread		 """"" ●_______
set whichwrap=b,s,h,l,<,>,[,] " ● 左右から上下行移動可能にする
set cursorline		 """"" ● カーソルライン発光
"set cursorcolumn	 """"" ● カーソル位置のカラムの背景色を変える
""""" set expandtab	 """"" ● タブをスペースに変える
set tabstop=4		 """"" ● タブ幅
set shiftwidth=4	 """"" ● インデント幅
set softtabstop=4	 """"" ● 連続空白にタブバックスペースが動く幅?
set autoindent		 """"" ● オートインデント
set smartindent	 """"" ● スマートインデント
set hlsearch  		 """"" ● 検索文字のハイライト
set incsearch 		 """"" ● インクリメンタルサーチ
set smartcase 		 """"" ● 大文字小文字を含む場合は区別する
"set wrapscan  	  """"" ● ラップスキャン 繰り返し検索				＊
set gdefault  		 """"" ● 置換 g オプションをデフォルトで有効___check___
set ignorecase		 """"" ● 大文字と小文字の区別をしない。 
set history=510	 """"" ● コマンド履歴を510件保存
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set wildmenu wildmode=list:longest,full " ● コマンドでTABによるファイル名補完を有効
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set visualbell t_vb=     """""" ● ビープ無効
set noerrorbells
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
""""" ● 一発 Vimrc Open			(map)				N7_vimrc // Mac_gvimrc
nnoremap <Space>. :<C-u>tabedit ~/.gvimrc<CR>             〓〓〓〓〓#####〓〓〓〓〓
""""" nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
""""" (.vimrc/.gvimrc) 一発で開けるようにマッピングします。
""""" 上記では「スペース .(ドット)」で開くようにしています。
""""" $MYVIMRCで上手く開かない場合は.vimrcへのフルパスを書きましょう。
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ● [gVim]のファイル保存ダイアログの初期ディレクトリ)
" set browsedir=buffer  "カレントディレクトリが初期ディレクトリになります。
" set browsedir=/path/to/default/directory "PATHを直接指定
set browsedir=/Users/th/Desktop "初期保存ディレクトリ指定
" set browsedir=last "最後に保存したディレクトリを指定			N7off // MacOn
"✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚INFINITE〓〓〓〓〓#####〓〓〓〓〓
"✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚
""""" #####  ● 挿入モード時、ステータスラインの色を変更　--その１-- ＊Status＊
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
"✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚
"✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚✚
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"#####  ● カーソル位置復元
if has("autocmd")
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal! g'\"" |
\ endif
endif
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"set sidescrolloff=15			 " ● 左右スクロール時の視界を確保
"set sidescroll=1				 " ● 左右スクロールは一文字づつ行う
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ● 全角スペースの表示						〓〓〓〓〓#####〓〓〓〓〓
function! ZenkakuSpace()
	highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction
	if has('syntax')
		augroup ZenkakuSpace
		autocmd!
		autocmd ColorScheme * call ZenkakuSpace()
		autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
		augroup END
	call ZenkakuSpace()
endif
" `````##### http://inari.hatenablog.com/entry/2014/05/05/231307 #####
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"  ● \cで行の先頭にコメントをつけたり外したりできる
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`~ThankGod~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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
"###########################################################################"
"###########################################################################"
"#############五井先生有り難う御座います人類即神也大成就####################"
"###########################################################################"
"###########################################################################"
"この下特にアンドロイド用                                  人類即神也 1-2
" ●  現バッファのファイルをインテントを使用して外部アプリで開く
"nnoremap <silent> gka :AndroidIntent<CR>
"command! -nargs=* AndroidIntent :call AndroidIntent(<q-args>)
"function! AndroidIntent(file)
"  let file = a:file == '' ? expand('%:p') : fnamemodify(a:file, ':p')
"  let file = escape(file, " '`$")
"  let cmd = 'am start --user 0 -a android.intent.action.VIEW -t text/plain -d '.file
"  let ret = system(cmd)
"endfunction
"```````````````````````````````````````````````````````````````````````````
" ● クリップボードへインテントを使用してヤンク(コピー)    人類即神也 2-2
"nnoremap <silent> gY :AndroidIntentText<CR>
"vnoremap <silent> gY y:AndroidIntentText<CR>
"command! -nargs=* -bang AndroidIntentText :call AndroidIntentText(<q-args>)
"function! AndroidIntentText(text)
"  let str = a:text != "" ? a:text : @"
"  let str = iconv(str, &enc, "UTF-8")
"  let str = escape(str, '`"$\')
"  let cmd = printf('am start --user 0 -a android.intent.action.SEND -t text/plain --es android.intent.extra.TEXT "%s"', str)
"  let ret = system(cmd)
"endfunction
"###########################################################################
"" ● トグル＃relative/absolute NumberMode
function! g:ToggleNuMode()
if(&rnu == 1)
set nornu
else
set rnu
endif
endfunc
"""""" and a Ctrl+L key map
nnoremap <C-L> :call g:ToggleNuMode()<cr> 
"###########################################################################
""""""""""""""""""""""""""""""             INFINITE〓〓〓〓〓#####〓〓〓〓〓
"" Android Terminal Emulator改変版用スクリプト
"" マウスを有効にする										 MacもOK
 set mouse=a
"""""""""""""""" ● Java言語の標準のクラス名をハイライト""""""""""""""""""""""""""
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
highlight VendorPrefix guifg=#00ffff gui=bold ctermfg=1 ctermbg=NONE cterm=bold 
match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/
" ● NEOBUNDLE ● 								 〓〓〓〓〓#####〓〓〓〓〓
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
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+client server -> nexus7
"###########################################################################
"~~~~~~~~~~~~~~~ ● filetypeの自動検出(最後の方に書く)~~~~~~~~~~~~~~~~~~~~~~
filetype on
"###########################################################################
" 神様有難う御座います
" 神様有難う御座います
" 神様有難う御座います
" 神様有難う御座います
" 神様有難う御座います
" 一人一人の宣言
" 私たちは未来世代に対して、責任ある個として、
" 五井先生ありがとうございます。
" ＃＃＃＃＃　　　　　　　　　　　　　　　　　　　　　　＃＃＃＃＃
" ＃＃＃＃＃　　　　　　　　　　　　　　　　　　　　　　＃＃＃＃＃
" ＃＃＃＃＃　　　　　　　　　　　　　　　　　　　　　　＃＃＃＃＃
" ＃＃＃＃＃　　　　　　　　　　　　　　　　　　　　　　＃＃＃＃＃
" ＃＃＃＃＃　　　　　　　　　　　　　　　　　　　　　　＃＃＃＃＃
" ＃＃＃＃＃　　　　　　神様😃御座います　　　　　　　　＃＃＃＃＃
" ＃＃＃＃＃　　　　　　　　　　　　　　　　　　　　　　＃＃＃＃＃
" ＃＃＃＃＃　　　　　　　　　　　　　　　　　　　　　　＃＃＃＃＃
" ＃＃＃＃＃　　　　　　　　　　　　　　　　　　　　　　＃＃＃＃＃
" ＃＃＃＃＃　　　　　　　　　　　　　　　　　　　　　　＃＃＃＃＃
" ＃＃＃＃＃　　　　　　　　　　　　　　　　　　　　　　＃＃＃＃＃
" ＃＃＃＃＃　　　　　　　　　　　　　　　　　　　　　　＃＃＃＃＃
" 守護霊様、守護神様、有難う御座います。
" 全ての全て先生、ありがとう御座います。
