call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
call plug#end()
autocmd vimenter * nested colorscheme gruvbox
map <C-b> :NERDTreeToggle<CR>
nnoremap k j
nnoremap i k
nnoremap j h
nmap <C-j> ^
nmap <C-l> $
nmap fw :w<CR>
nmap fq :q<CR>
nmap fwq :wq<CR>
set number
