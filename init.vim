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
colorscheme maui
" set guifont=RobotoMonoForPowerline-Regular:h15 " This is set in the terminal
set guioptions-=L


" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Clear search highlights
map <silent> <leader><cr> :nohlsearch<cr>

set noerrorbells        " No beeps!
set novisualbell        " No visual bell beeps!
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
set autochdir           " Automcatically Change Dir when opening file
set so=7                " Scroll n lines from the top/bottom

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

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Remap write - I do this A LOT
"":command W w

" CTRLP
let g:ctrlp_max_height = 18
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
nnoremap <Leader>[ :CtrlP<CR>         " Open file menu
nnoremap <Leader>b :CtrlPBuffer<CR>   " Open buffer menu
nnoremap <Leader>f :CtrlPMRUFiles<CR> " Open most recently used files

" Override tab width
autocmd Filetype python setlocal ts=4 sw=4 expandtab
"autocmd Filetype html,javascript setlocal ts=2 sw=2 expandtab

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
let g:NERDTreeChDirMode=2
let NERDTreShowHidden=1
let NERDTreeShowBookmarks=1
let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

let g:webdevicons_enable_nerdtree = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
" let g:NERDTreeFileExtensionHighlightFullName = 1

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close buffers
":nnoremap <Leader>q :Bdelete<CR>

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L

" Fast saving

" Nicer backspace: Option-Backspace deletes word
:imap <M-BS> <C-W>
":imap <M-BS> <C-O>diw

" Deoplete
" https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
call deoplete#enable()
"let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = ['tern#Complete', 'jspc#omni']

set completeopt=longest,menuone "preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

" Supertab for everything except Ultisnips.
autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<c-]>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" FZF
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Auto Generate a UUID and paste it into the current cursor line.
" https://gist.github.com/jonmorehouse/8442341
function! GenerateUUID()
python << EOF
import uuid
import vim
vim.command("let generatedUUID = \"%s\"" % str(uuid.uuid4()))
EOF
:execute "normal i" . generatedUUID . ""
endfunction


