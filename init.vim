let mapleader = " "
syntax on
set number
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set smartcase
set tabstop=4
set autoindent

map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map tu :tabe<CR>
map tj :-tabnext<CR>
map tl :+tabnext<CR>

noremap h i
noremap H I 
noremap j h
noremap i k
noremap k j
noremap I 5k
noremap K 5j
noremap L 5l
noremap J 5h
noremap q Z
noremap Z Q
noremap <LEADER><CR> :nohlsearch<CR>
noremap <LEADER>i <C-w>k
noremap <LEADER>k <C-w>j
noremap <LEADER>j <C-w>h
noremap <LEADER>l <C-w>l
noremap <C-k>     <C-f>
noremap <C-i>     <C-b>



noremap <C-s> :w<CR>
