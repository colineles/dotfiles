set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on
set relativenumber
set nu "Show line numbers
let g:neocomplete#enable_at_startup = 1
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>

set backspace=indent,eol,start

set background=dark
colorscheme solarized

let g:airline_theme = 'solarized'
set laststatus=2
let g:airline_powerline_fonts = 1

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set clipboard=unnamed
set directory=~/tmp/swp
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set incsearch

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au FileType go nmap <leader>gi <Plug>(go-install)
au FileType go nmap <leader>g <Plug>(go-def)

au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>r <Plug>(go-run)

au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>gs <Plug>(go-describe)

au FileType go nmap <leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>s <Plug>(go-implements)

au FileType go nmap <leader>gr <Plug>(go-referrers)

au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>e <Plug>(go-rename)

au BufNewFile,BufRead *.py set tabstop=4 
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

let g:tmux_navigator_no_mappings = 1
let NERDTreeHijackNetrw = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>


let python_highlight_all=1
let g:tmux_navigator_save_on_switch = 1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

autocmd BufRead COMMIT_EDITMSG set colorcolumn=80

let g:hardtime_ignore_buffer_patterns = [ "NERD.*" ]
let g:hardtime_default_on = 1 
let g:hardtime_ignore_quickfix = 1
let g:list_of_normal_keys = ["h", "j", "k", "l", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []
