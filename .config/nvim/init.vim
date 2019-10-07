call plug#begin('~/.config/nvim/plugged')
Plug 'cocopon/iceberg.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-syntastic/syntastic'
call plug#end()

"filetype plugin on
"set omnifunc=syntaxcomplete#Complete

" Code Completion
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

" Tab Sizes
autocmd Filetype go setlocal tabstop=4

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
 
let g:syntastic_python_flake8_args = "--ignore=E402,E501,E221"
let g:syntastic_python_checkers=['flake8']
let g:syntastic_go_checkers = ['go', 'golint']
 
function! SyntasticCheckHook(errors)
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([len(a:errors), 10])
    endif
endfunction
" Syntastic Config End

" Settings
set number
set expandtab
syntax on
colo iceberg
set hlsearch
" set ts=2
" set sw=2
" set sts=2
set et
" set backspace=2 " make backspace work like most other apps
set modifiable
set clipboard=unnamedplus " make yank/paste work with system clipboard
syntax enable
" Display line at 81 characters
if exists('+colorcolumn')
  set colorcolumn=81
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
