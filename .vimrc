" basic
syntax on 
set number
filetype plugin on
set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '/usr/local/opt/fzf'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/vim-easy-align'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'nanotech/jellybeans.vim'

" Lightline
let g:lightline = { 'colorscheme': 'plastic' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()



" autoinstall plugin
autocmd VimEnter *
      \ if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
      \|  PlugInstall | q
      \| endif

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
nmap <leader>g :YcmCompleter GoTo<CR>


