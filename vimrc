execute pathogen#infect()
set background=dark
"colorscheme PaperColor
colorscheme gruvbox
syntax on
filetype plugin indent on
set number
set fileencoding=utf-8
set t_Co=256
set shiftwidth=3
set tabstop=8
set noexpandtab
set autoindent
set relativenumber
set laststatus=2
"let g:airline_theme="papercolor"
let g:airline_theme="gruvbox"
let g:airline#extensions#tabline#enabled = 1
nnoremap <F4> :buffers<CR>:buffer!<Space>

"let vimrplugin_assign = 2
" Tab completion
autocmd FileType r inoremap <tab> <C-x><C-o>

" Makes navigation with Omni completion work with j and k
autocmd FileType r inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
autocmd FileType r inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

let R_term = "rxvt-hammett"
let R_start_libs = "base,stats,graphics,grDevices,utils,methods,ggplot2,dplyr,reshape2,tidyr"

" R TMUX
let R_in_buffer = 0
let R_applescript = 0
let R_tmux_split = 1
let R_assign = 2
let R_source_args = "print.eval = TRUE, max.deparse.length = 1e3, echo = TRUE"
let R_vsplit = 1
let R_rconsole_width = 80
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

"Latex
let g:LatexBox_viewer = "zathura --fork"
