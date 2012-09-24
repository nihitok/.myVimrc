
set nocompatible               " be iMproved
filetype off                   " required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplcache-snippets-complete'

NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'vim-scripts/trinity.vim'
NeoBundle 'vim-scripts/Source-Explorer-srcexpl.vim'
NeoBundle 'vim-scripts/DrawIt'
NeoBundle 'vim-scripts/DirDiff.vim'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'abudden/TagHighlight'

NeoBundle 'h1mesuke/vim-alignta'
NeoBundle 'nvie/vim-rst-tables'
NeoBundle 'sjl/gundo.vim'

NeoBundle 'mattn/webapi-vim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'daisuzu/facebook.vim'

"NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'tpope/vim-rails'
"NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
"NeoBundle 'tpope/vim-endwise'
"NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-rvm'
"NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimshell'
" NeoBundle 'Shougo/vimproc'
NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'cucumber/cucumber'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tomasr/molokai'
"NeoBundle 'leshill/vim-json'
NeoBundle 'taku-o/vim-ro-when-swapfound'
NeoBundle 'taku-o/vim-toggle'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'mattn/calendar-vim'
NeoBundle 'kchmck/vim-coffee-script'
"NeoBundle 'ujihisa/rdoc.vim'
"NeoBundle 'briancollins/vim-jst'
NeoBundle 'bbommarito/vim-slim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'vim-ruby/vim-ruby'

" for Python
NeoBundle 'mitechie/pyflakes-pathogen'
NeoBundle 'sontek/rope-vim'
NeoBundle 'reinh/vim-makegreen'
NeoBundle 'lambdalisue/nose.vim'

" for PHP
NeoBundle 'scrooloose/syntastic'

NeoBundle 'smartchr'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'mattn/zencoding-vim'
" ------------

filetype plugin indent on     " Required!

if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
      \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
endif




let g:vimproc_dll_path = $VIMRUNTIME . '/autoload/proc.so'

" help ja
":helptags ~/.vim/doc
":set helplang=ja


" colorscheme
syntax on
" set t_Co=256
" colorscheme wombat
" colorscheme desert
colorscheme h2u_black

" 検索時ハイライト
:set hlsearch

" encoding
set encoding=utf-8
set fileencoding=utf-8
" 新しい行のインデントを現在行と同じにする
set autoindent
" バックスペースでインデントや改行を削除できるようにする
set backspace=2

" バックアップファイルを作るディレクトリ
set backupdir=~/.vim/.vimbackup
" ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set browsedir=buffer 
" Vi互換をオフ
set nocompatible
" スワップファイル用のディレクトリ
set directory=~/.vim/.vimbackup
" タブの代わりに空白文字を挿入する
set expandtab
" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden
" インクリメンタルサーチを行う
set incsearch
" コマンド、検索パターンを100個まで履歴に残す
set history=100
" タブ文字、行末など不可視文字を表示する
set list
" listで表示される文字のフォーマットを指定する
set listchars=eol:$,tab:»-,extends:<
" 行番号を表示する
set number
" シフト移動幅
set shiftwidth=2
" 閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
" 検索時に大文字を含んでいたら大/小を区別
set smartcase
" 新しい行を作ったときに高度な自動インデントを行う
set smartindent
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
" ファイル内の <Tab> が対応する空白の数
set tabstop=2
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" 検索をファイルの先頭へループしない
set nowrapscan
" 他で書き換えられたら自動で読み直す
set autoread
"テキストの折り返し表示をしない
set nowrap
"htmlには行番号をつけない
let html_number_lines = 0
autocmd FileType html setlocal noexpandtab

" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu

" visual モードで連続して、インデント出来るように設定
vnoremap <silent> > >gv
vnoremap <silent> < <gv

"入力モード時、ステータスラインのカラーを変更
autocmd InsertEnter * highlight StatusLine guifg=#333333 guibg=#ff8c00
autocmd InsertLeave * highlight StatusLine guifg=#333333 guibg=#ffffff

"日本語入力をリセット
au BufNewFile,BufRead * set iminsert=0

"タブ幅をリセット
au BufNewFile,BufRead * set tabstop=2 shiftwidth=2

" neocomplchache
let g:neocomplcache_enable_at_startup = 1
" 区切り補完の有効化
let g:neocomplcache_enable_underbar_completion = 1
" snipet dir
"let g:neocomplcache_snippetsdir = '~/.vim/bundle/neocomplcache-snippets-complete/autoload/neocomplcache/sources/snippets_complete'
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'


let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

"imap <C-k>     <Plug>(neocomplcache_snippets_expand)
"smap <C-k>     <Plug>(neocomplcache_snippets_expand)

" スニペットを展開する。スニペットが関係しないところでは行末まで削除
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-o>D"
smap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-o>D"

"tabで補完候補の選択を行う
inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<Up>" : "\<S-TAB>"




" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'




" プラグインごとの設定
" zen-coding config
imap <C-e> <C-y>,

" coffee-script
" call pathogen#infect()

" coffee-script automatic compile
" autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow

" vimshell
" let g:VimShell_EnableInteractive = 1


" markdown test
nnoremap \m :!perl ~/.vim/etc/Markdown.pl "%" > /tmp/__markdown.html; echo '<link href="https://raw.github.com/gist/2554919/2e66cabdafe1c9a7f354aa2ebf5bc38265e638e5/github.css" rel="stylesheet"></link>' >> /tmp/__markdown.html; open -a Google\ Chrome /tmp/__markdown.html<CR><CR>

" Alignを日本語環境で使用するための設定
:let g:Align_xstrlen = 3
" vim-indent-guide setting
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 20
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=orange ctermbg=4

" tumblr.vim
"let g:tumblr_email='nihitok@gmail.com'
"let g:tumblr_password='Wa34sibLhV'

" Applescript
let g:quickrun_config = {}
let g:quickrun_config.applescript = {'command' : 'osascript' , 'output' : '_'}

" NERDTree
nmap <Leader>n :NERDTreeToggle<CR>

" syntastic_enable_signs
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

" PHP
let php_noShortTags = 1




"===========================================================
" dict
"===========================================================

" ユーザ定義の辞書を指定
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'python' : '~/.vim/dict/python.dict',
  \ 'scala' : '~/.vim/dict/scala.dict',
  \ 'java' : '~/.vim/dict/java.dict'
  \ }
let g:neocomplcache_same_filetype_lists = {
  \ 'html' : 'xhtml,javascript,php',
  \ 'php' : 'xhtml,javascript',
  \ 'java' : 'scala'
  \ }


"===========================================================
" filetype
"===========================================================

augroup readCorrectScheme
  autocmd!
  "scaml fileをhamlとして読み込む
  au BufNewFile,BufRead *.ejs set filetype=html
  "au BufNewFile,BufRead *.html set filetype=htmljinja
  au BufNewFile,BufRead *.html set filetype=html
  au BufNewFile,BufRead *.ejs set filetype=html
  au BufNewFile,BufRead *.snip set filetype=snip
  au BufNewFile,BufRead *.scaml set filetype=haml
  "less file
  au BufNewFile,BufRead *.less set filetype=less
  "scala file
  au BufNewFile,BufRead *.scala set filetype=scala
  au BufNewFile,BufRead *.mkd set filetype=mkd
  au BufNewFile,BufRead *.md set filetype=mkd
  " 新規ファイル保存後filetypeを取得
  " au BufWritePost .....
  au BufNewFile,BufRead *.scpt,*.applescript :setl filetype=applescript
  au FileType applescript :inoremap <buffer> <S-CR>  ￢<CR>
augroup END




" for Python
"au FileType python setl autoindent
"au FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"au FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
"au FileType python setl tabstop=8 expandtab shiftwidth=2 softtabstop=2

" expandtab を解除
" au FileType python setl noexpandtab

" for rails setting
augroup railsSetting
  autocmd!
  "タブ幅をリセット
  au BufNewFile,BufRead * set tabstop=2 shiftwidth=2
  ".rhtmlと.rbと.ymlでタブ幅を変更
  au BufNewFile,BufRead *.rhtml set tabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.rb set tabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.yml set tabstop=2 shiftwidth=2
  "Rails関連ファイルで文字コードをUFT-8に設定
  au User Rails* set fenc=utf-8
augroup END

"Rubyのオムニ補完を設定(ft-ruby-omni)
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

".rhtmlと.rbでタブ幅を変更
"au BufNewFile,BufRead *.rhtml   set nowrap tabstop=2 shiftwidth=2
"au BufNewFile,BufRead *.rb  set nowrap tabstop=2 shiftwidth=2



" snipet text setting

" expandtab を解除
"au FileType snip setl noexpandtab

" Tabでスニペットを展開
"imap <expr><Tab> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<Tab>"
"smap <expr><Tab> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<Tab>"

" au FileType snip imap <C-T> <C-V><Tab>
" au FileType snip smap <C-T> <C-V><Tab>




""" unite.vim
" 入力モードで開始する
" let g:unite_enable_start_insert=1
" バッファ一覧
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file file/new<CR>
" レジスタ一覧
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
" 常用セット
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
" Unite outline
nnoremap <silent> ,uo :<C-u>Unite outline<CR>
" 全部乗せ
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

" unite-tag
autocmd BufEnter *
\   if empty(&buftype)
\|      nnoremap <buffer> <C-]> :<C-u>UniteWithCursorWord -immediately tag<CR>
\|  endif

"Unite outline分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
" au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
" au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q


if has("gui_running")
  set transparency=20
  set guifont=Inconsolata:h15
endif





syntax match atVariable '^@\w*'
hi link atVariable Keyword

"全角スペースを視覚化
"hi ZenkakuSpace guibg=white
"match ZenkakuSpace /　/
