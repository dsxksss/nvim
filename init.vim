call plug#begin()
" 文件浏览树
Plug 'scrooloose/nerdtree'
" nvim配色主题
Plug 'morhetz/gruvbox'
" js代码提示
Plug 'pangloss/vim-javascript'
" 代码补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" cs替换插件
Plug 'tpope/vim-surround'
" 代码格式线插件
Plug 'Yggdroot/indentLine'
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

set number " 显示行号d

let g:indent_guides_guide_size = 1 " 指定对齐线的尺寸

let g:indent_guides_start_level = 2 " 从第二层开始可视化显示缩进

" 32 - 51 coc补全配置 
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
