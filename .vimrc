" basic
set encoding=UTF-8
syntax on
set number
filetype plugin on
set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start
set list listchars=tab:»·,trail:·
set title

" autocmd! bufwritepost .vimrc source %

imap jj <Esc>
cmap jj <c-c>
vmap v <Esc>
map ; :

" This turns off Vim’s crazy default regex characters and makes searches use normal regexes.
nnoremap / /\v
vnoremap / /\v

" Every unnecessary keystroke that can be saved is good for your health :)
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-k>
nnoremap <C-L> <C-W><C-L>

set hlsearch
set incsearch
set ignorecase
set smartcase
map <CR> :nohl<CR>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
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
Plug 'wakatime/vim-wakatime'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
  map <leader>f :Files<cr>
  map <C-P> :GFiles<cr>
  map <C-B> :Buffer<cr>
Plug 'luochen1990/rainbow'
  let g:rainbow_active = 1
Plug 'ap/vim-css-color'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'

colorscheme gruvbox

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

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree
"
" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()
let g:NERDTreeIgnore = ['^node_modules$']

