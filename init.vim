call plug#begin()
" 文件浏览树
Plug 'scrooloose/nerdtree'
" nvim配色主题
Plug 'morhetz/gruvbox'
" js代码提示
Plug 'pangloss/vim-javascript'
" 代码补全
Plug 'valloric/youcompleteme'
call plug#end()
" 启用主题
autocmd vimenter * nested colorscheme gruvbox
" ctrl+b开关浏览窗口
map <C-b> :NERDTreeToggle<CR>
nmap <C-h> ^
nmap <C-l> $
nmap fw :w<CR>
nmap fq :q<CR>
nmap fwq :wq<CR>
" 显示行号
set number