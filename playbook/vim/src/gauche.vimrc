"Vim------------------------------------
set nocompatible
filetype plugin indent off 
"/Vim------------------------------------



"NeoBundle------------------------------------
if has('vim_starting')
  set nocompatible " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'

"" neobundle.vimのgitアドレス
"NeoBundle 'git://github.com/Shougo/neobundle.vim.git'

" neocomplete.vimのgitアドレス
NeoBundle 'git://github.com/Shougo/neocomplete.vim'

" vimproc用
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

" unite.vim
NeoBundle 'Shougo/unite.vim'

" Gauche用補完 
NeoBundle 'git://github.com/aharisu/vim-gdev'

" vim-niji(lisp用括弧)
NeoBundle 'amdt/vim-niji'

"/NeoBundle-------------------------------------



"Vim--------------------------------------------
filetype on
filetype plugin on
filetype indent on
syntax on
set nu

set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2
"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

"/Vim--------------------------------------------



"NeoComplete-------------------------------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" scheme
let g:lisp_rainbow = 1
"/NeoComplete-------------------------------------



"vim-gdev-------------------------------------
":Unite gosh_infoを実行します
nmap gi <Plug>(gosh_info_start_search)
":Unite カーソル位置のシンボルを初期値に:Unite gosh_infoを実行します
nmap gk <Plug>(gosh_info_start_search_with_cur_keyword)
imap <C-A> <Plug>(gosh_info_start_search_with_cur_keyword)

"ginfoウィンドウのスクロールアップ・ダウン
nmap <C-K> <Plug>(gosh_info_row_up)
nmap <C-J> <Plug>(gosh_info_row_down)
imap <C-K> <Plug>(gosh_info_row_up)
imap <C-J> <Plug>(gosh_info_row_down)
"ginfoウィンドウを閉じます
nmap <C-C> <Plug>(gosh_info_close)
imap <C-C> <Plug>(gosh_info_close)

"カーソル位置のシンボルが定義されている場所にジャンプ
nmap <F12> <Plug>(gosh_goto_define)
nmap <F11> <Plug>(gosh_goto_define_split)

"/vim-gdev-------------------------------------





