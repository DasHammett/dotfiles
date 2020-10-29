filetype off
let g:pathogen_disabled = []
call pathogen#infect()
call pathogen#helptags()
set background=dark
colorscheme PaperColor
syntax on
filetype plugin indent on
set number
set fileencoding=utf-8
set t_Co=256
set shiftwidth=3
set tabstop=4 softtabstop=4
set expandtab
set autoindent
set relativenumber
set laststatus=2
set clipboard=unnamedplus
set incsearch
set completeopt=longest,menuone

"key mappings
nnoremap za zA
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

"Tab cycle through buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Tab to indent in visualmode
vnoremap <S-Tab> <gv
vnoremap <Tab> >gv

" F4 to show buffers
nnoremap <F4> :buffers<CR>:buffer!<Space>

" Makes navigation with Omni completion work with j and k
inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

" Maes Tab and Enter complete omni
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" mappings for python
autocmd FileType python inoremap <tab> <C-x><C-o>
autocmd FileType python nmap <buffer> <Space> <leader>w
autocmd FileType python vmap <buffer> <Space> <leader>w
autocmd FileType python AnyFoldActivate

" mappings for R
autocmd FileType r inoremap <tab> <C-x><C-o>
autocmd FileType r AnyFoldActivate
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

" mappings for Latex
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
let R_start_libs = "base,stats,graphics,grDevices,utils,methods,ggplot2,dplyr,reshape2,tidyr"
let R_assign = 3

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
let g:airline_theme="papercolor"
let g:airline#extensions#tabline#enabled = 0
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
