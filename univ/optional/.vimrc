" Enable syntax highlighting
syntax enable
set background=dark

" Set relative line numbers
set number relativenumber

" Set smooth 4-space tab indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Shortcuts
nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq!<CR>
inoremap <C-s> <Esc>:w<CR>a
inoremap <C-q> <Esc>:wq!<CR>a

" Remap HJKL to arrow keys in normal and insert mode
nnoremap k <Up>
nnoremap j <Down>
nnoremap h <Left>
nnoremap l <Right>

" Open Netrw file explorer
nnoremap <C-n> :Lex<CR>:vertical resize 30<CR>

" Enable mouse support
set mouse=a

" Change window switching to Ctrl+arrows
map <C-Left> <C-W>h
map <C-Right> <C-W>l
map <C-Up> <C-W>k
map <C-Down> <C-W>j

" Reload the .vimrc file
command! ReloadVimrc :source ~/.vimrc<CR>
