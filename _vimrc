" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/vimfiles/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-sensible'
Plug 'posva/vim-vue'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
" Plug 'mg979/vim-visual-multi'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'franbach/miramare'
Plug 'sheerun/vim-polyglot'

" Initialize plugin system
call plug#end()

set termguicolors
let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1
let g:airline_theme = 'miramare'
let g:miramare_cursor = 'blue'
colorscheme miramare
set guicursor+=a:blinkon0

set clipboard=unnamed
syntax on
"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'
set number
set linespace=8
set ts=2 sw=2 sts=2
set belloff=all

let mapleader=","
nmap <leader>so :source $HOME\_vimrc<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
inoremap {<cr> {<cr>}<c-o><tab>	
inoremap [<cr> [<cr>]<c-o><tab>	
inoremap (<cr> (<cr>)<c-o><tab>

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas::h9cANSI
    set guioptions=-m
    set guioptions=-T
    set guioptions=-r
  endif
endif
