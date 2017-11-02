"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/local/bin/python2.7'


" Required:
set runtimepath^=~/tmp/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/tmp/dein'))
call dein#add('Shougo/dein.vim')

call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('fatih/vim-go')
call dein#add('Shougo/deoplete.nvim')
call dein#add('altercation/vim-colors-solarized')
call dein#add('edkolev/tmuxline.vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-fugitive')
call dein#add('freeo/vim-kalisi')
call dein#add('morhetz/gruvbox')
call dein#add('edkolev/promptline.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimproc.vim')
call dein#add('Shougo/neoyank.vim')
call dein#add('zchee/deoplete-go', {'build': 'make'})
call dein#add('tpope/vim-commentary')
call dein#add('vim-ruby/vim-ruby')
call dein#add('davidhalter/jedi')
call dein#add('zchee/deoplete-jedi')
" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
call dein#add('mileszs/ack.vim')
call dein#add('kburdett/vim-nuuid')
call dein#add('scrooloose/syntastic')
call dein#add('tsukkee/unite-tag')
call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-bundler')
call dein#add('osyo-manga/vim-monster')
call dein#add('craigemery/vim-autotag')

" Let dein manage dein
" Required:
"
call dein#add('Shougo/dein.vim')

" Required:
call dein#end()

filetype plugin indent on
filetype plugin on
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tmux integration
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>
let g:tmux_navigator_save_on_switch = 1

set background=dark
colorscheme gruvbox
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set relativenumber

" show line number is gutter
set nu "Show line numbers

" use main clipboard
set clipboard=unnamed

" tab spacing
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

"Unite
nnoremap <C-p> :Unite tag -start-insert file_rec/async<cr>
let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
nnoremap - :Unite file<cr>
nnoremap <space>/ :Unite -auto-preview grep:.<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<cr>
" Use ag (the silver searcher)
" https://github.com/ggreer/the_silver_searcher
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
\ '-i --vimgrep --hidden --ignore ' .
\ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
let g:unite_source_grep_recursive_opt = ''

" ignore files
call unite#custom#source('file_rec,file_rec/async,grep', 'ignore_pattern', '\vendor')
" nnoremap <C-[> :Unite register<cr>
" nnoremap Esc <Nop><cr>
"nnoremap <C-b> :Unite buffer<cr>
"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:syntastic_python_python_exec = "/usr/local/bin/python3"
let g:syntastic_python_checkers = ['flake8']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/
