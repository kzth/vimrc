"Vundleの設定
set nocompatible
filetype off
set rtp+=~/.vim/vundle.git/
call vundle#rc()

"bundleの設定
"github上のリポジトリから取得する   Bundle 'user_name/repository_name'
"vim-script上のリポジトリから取得する   Bundle 'script_name'
"それ以外のリポジトリから取得する   Bundle 'git://reepository_url'

Bundle 'JavaScript-syntax'
Bundle 'pangloss/vim-javascript'

Bundle 'matchit.zip'
Bundle 'ruby-matchit'

Bundle 'surround.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'AutoClose'

"scala
Bundle 'scala.vim'
Bundle 'vim-scala'
Bundle 'scala/scala-dist'

Bundle 'thinca/vim-ref'
"autocmd BufNewFile scala :set filetype=scala
"autocmd BufRead scala :set filetype=scala

"coffee-script
Bundle 'coffee.vim'

"検索の設定
set hlsearch
set ignorecase
set smartcase
set wrapscan

"タブの設定
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start


"listの文字設定
set list
set listchars=tab:>-,extends:<,trail:_,eol:$

"テキスト関連の設定
set wrap
set textwidth=0
set autoindent
set nowrap
set encoding=utf-8

"コマンドラインの設定
set wildmenu

"閉じ括弧の設定
set showmatch

"行番号の設定
set number

"カーソル位置の表示
set ruler

" Listモード (訳注: オプション 'list' がオンのとき) に使われる文字を設定する。
"set listchars=tab:>-,extends:<,trail:-,eol:<

"ステータス行表示
set laststatus=2
set showcmd

"バックアップの設定
set nobackup
set writebackup

"シンタックスを有効にする
syntax on

"filetypeをオンにする
filetype on
filetype plugin on
filetype indent on

"compatibleの設定
set nocompatible

"括弧を自動的に補完する
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"inoremap {{ {
"inoremap [[ [
"inoremap (( (
"inoremap "" "
"inoremap '' '
"vnoremap { "zdi^V{<C-R>z}<ESC>
"vnoremap [ "zdi^V[<C-R>z]<ESC>
"vnoremap ( "zdi^V(<C-R>z)<ESC>
"vnoremap " "zdi^V"<C-R>z"<ESC>
"vnoremap ' "zdi'<C-R>z'<ESC>

"色の設定
hi Comment ctermfg=6
hi SpecialKey ctermfg=4
hi NonText ctermfg=4

"vim起動時に画面サイズを大きくする
"set columns=150
"set lines=50

"vim終了時に画面サイズを戻す
"nnoremap <silent>:qq :set columns=95<CR> :set lines=35<CR> :q!<CR>
nnoremap qq :q!<CR>

"自分のvimの設定
inoremap <silent> <F4>f function<space>()<right>{<CR><CR>}<ESC>ki<tab><ESC>kwi
inoremap <silent> <F4>o for(;;){<CR><CR>}<ESC>ki<tab><ESC>kwli

"オムニ補完の<C-X><C-o>を<C-Space>に変更
imap <C-Space> <C-x><C-o>

"エンター
imap <C-E> <ESC>o

"vim-refの設定
let g:ref_refe_cmd = $HOME . '/Documents/Reference/rubyrefm/refe-1_9_3'

"closetag.vimの設定
let g:closetag_html_style=1
source ~/.vim/scripts/closetag.vim

"画面分割した際の移動を簡単にする
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" <ESC>の連打でハイライトをリセットする
nnoremap <ESC><ESC> :nohlsearch<CR>

" Google Javascript Style Guide setting
"function! s:javascript_filetype_settings()
"  autocmd BufLeave <buffer> call jslint#clear()
"  autocmd BufWritePost <buffer> call jslint#check()
"  autocmd CursorMoved <buffer> call jslint#message()
"endfunction
"autocmd FileType javascript call s:javascript_filetype_settings()
"autocmd QuickfixCmdPost make copen

" easymotion
let g:EasyMotion_leader_key = '<Leader>'

" autoclose
nmap <Leader>x <Plug>ToggleAutoCloseMappings

"*************************************************************************************
"
"
"                         ここからはテストです
"
"
"*************************************************************************************

imap <C-R> <ESC>A
imap <C-D> <ESC>A;<CR>

"htmlタグの</入力時に自動補完
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
augroup END

" IM IBusの設
" 「日本語入力固定モード」切替キー
inoremap <silent> <C-j> <C-r>=IMSate('FixMode')<CR>

" PythonによるIBus制御指定
let IM_CtrlIBusPython = 1

set timeout timeoutlen=3000 ttimeoutlen=100
