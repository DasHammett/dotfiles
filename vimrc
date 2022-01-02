filetype off
let g:pathogen_disabled = []
call pathogen#infect()
call pathogen#helptags()
set background=dark
"syntax on
filetype plugin indent on
set number
set fileencoding=utf-8
  let g:PaperColor_Theme_Options = {
    \   'theme': {
    \     'default': {
    \       'allow_italic': 1,
    \       'allow_bold': 1
    \     }
    \   }
    \ }
set termguicolors
set shiftwidth=3
set tabstop=4 softtabstop=4
set expandtab
set autoindent
set relativenumber
set laststatus=2
set clipboard=unnamedplus
set incsearch
set completeopt=longest,menuone
set hidden
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme PaperColor 
syntax on

"key mappings
nnoremap za zA
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j


"Tab cycle through buffers
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprevious!<CR>

" Tab to indent in visualmode
vnoremap <S-Tab> <gv
vnoremap <Tab> >gv

" F4 to show buffers
nnoremap <F4> :buffers<CR>:buffer!<Space>

" Makes navigation with Omni completion work with j and k
inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

" Makes Tab and Enter complete Omni
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "<c-x><c-o>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" mappings for python
autocmd FileType python nmap <buffer> <Space> <leader>w
autocmd FileType python vmap <buffer> <Space> <leader>w
autocmd FileType python AnyFoldActivate

" mappings for R
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
autocmd FileType r AnyFoldActivate

" mappings for LaTeX
autocmd FileType tex inoremap <Tab><Tab> <Esc>/<++><Enter>"_c4l
autocmd FileType tex inoremap :itm \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap :item \item 
autocmd FileType tex inoremap :bf \textbf{}<++><Esc>T{i
autocmd FileType tex inoremap :emph \emph{}<++><Esc>T{i
autocmd FileType tex inoremap :ra $\rightarrow$
autocmd FileType tex inoremap :la $\leftarrow$
autocmd FileType tex inoremap :tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
autocmd FileType tex inoremap :beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
autocmd FileType tex inoremap :sec \section{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap :ssec \subsection{}<Enter><Enter><++><Esc>2kf}i

"Settings for plugins 
" Nvim-R
let R_external_term = "st -e"
"let R_rconsole_width = winwidth(0)/2
let R_start_libs = "base,stats,graphics,grDevices,utils,methods,ggplot2,dplyr,reshape2,tidyr"
let R_assign = 3
let Rout_more_colors = 1
let R_notmuxconf = 1

"vim-tex
let g:vimtex_view_method = "zathura"

" python-mode
let g:pymode_python = 'python3'
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0
let g:pymode_options_colorcolumn = 0
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'

" NerdTree
let g:NERDTreeWinPos = "left"

" vim-airline setup
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_theme="distinguished"
let g:airline#extensions#tabline#enabled = 0
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_powerline_font = 1
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.dirty='⚡'
let g:airline#extensions#branch#enabled = 1
