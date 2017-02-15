execute pathogen#infect()

filetype plugin indent on
syntax on

" Theming
set encoding=utf-8
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
set background=dark
let g:quantum_italics = 1
let g:quantum_black = 1
colorscheme OceanicNext
" set guifont=Inconsolata\ for\ Powerline:h15 " This is set in the terminal
set guioptions-=L

set autochdir " Automcatically Change Dir when opening file - saves new files to same dir

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Search helpers

set ruler " Show the cursor position all the time

" Use <C-N> to clear the highlighting of :set hlsearch.
if maparg('<C-D>', 'd') ==# ''
  nnoremap <silent> <C-D> :nohlsearch<CR><C-L>
endif

"set noerrorbells        " No beeps!
"set novisualbell        " No visual bell beeps!
set belloff=all         " Really no bells
set showcmd             " Show (partial) command in status line.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
set softtabstop=2
set splitright          " Vertical split to right of current.
set nostartofline       " Do not jump to first character with page commands.

" speed up syntax highlighting
set ignorecase					" Make searching case insensitive
set smartcase 					" ... unless the query has capital letters.
set noshowmatch         " Do not show matching brackets by flickering
set noshowmode          " We show the mode with airline or lightline
set nocursorcolumn
set nocursorline
syntax sync minlines=256
set synmaxcol=300
set re=1

" Nicer scrolling
if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif

" CTRLP
nnoremap <Leader>[ :CtrlP<CR>         " Open file menu
nnoremap <Leader>b :CtrlPBuffer<CR>   " Open buffer menu
nnoremap <Leader>f :CtrlPMRUFiles<CR> " Open most recently used files

" Override tab width
autocmd Filetype python setlocal ts=4 sw=4 expandtab
"autocmd Filetype html,javascript setlocal ts=2 sw=2 expandtab

" Remove all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

nmap <leader>t :term<cr>
nmap <leader>, :bnext<CR>
nmap <leader>. :bprevious<CR>
nmap <silent>1 <Plug>AirlineSelectTab1
nmap <silent>2 <Plug>AirlineSelectTab2
nmap <silent>3 <Plug>AirlineSelectTab3
nmap <silent>4 <Plug>AirlineSelectTab4
nmap <silent>5 <Plug>AirlineSelectTab5
nmap <silent>6 <Plug>AirlineSelectTab6
nmap <silent>7 <Plug>AirlineSelectTab7
nmap <silent>8 <Plug>AirlineSelectTab8
nmap <silent>9 <Plug>AirlineSelectTab9

" nerd-tree
map <leader>- :NERDTreeToggle<CR>
let NERDTreShowHidden=1
let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

let g:webdevicons_enable_nerdtree = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
" let g:NERDTreeFileExtensionHighlightFullName = 1

" move between splits - Remap CTRL-H to CTRL-W-H
nmap <C-h> <C-W>h
" Which makes a <BS> so map <BS> to CTRL-W-H
nmap <BS> <C-W>h

" Close buffers
":nnoremap <Leader>q :Bdelete<CR>

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L

" Fast saving
nmap <leader>w :w!<cr>

" Deoplete
" https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = ['tern#Complete', 'jspc#omni']

set completeopt=longest,menuone "preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
