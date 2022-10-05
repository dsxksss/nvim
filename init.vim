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
" 括号补全插件
Plug 'jiangmiao/auto-pairs'
" 搜索跳转插件
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()
" 启用主题
autocmd vimenter * nested colorscheme gruvbox
" ctrl+b开关浏览窗口
map <Space>b :NERDTreeToggle<CR>
inoremap <Space>n <Esc>
nmap <Space>h ^
nmap <Space>l $
nmap fw :w<CR>
nmap fq :q<CR>
nnoremap tn :tabnew<CR>
nnoremap tk :tabprev<CR>
nnoremap tj :tabnext<CR>
nnoremap tc :tabclose<CR>

set number " 显示行号d
set timeoutlen=300 " 映射输入延迟时间

let g:indent_guides_guide_size = 1 " 指定对齐线的尺寸

let g:indent_guides_start_level = 2 " 从第二层开始可视化显示缩进

" coc补全配置 
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

let g:copilot_no_tab_map = v:true
imap <silent><script><expr> <C-y> copilot#Accept("\<CR>")

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" fzf插件配置
noremap <silent> <Space>f :FZF<CR>
nnoremap <silent> <Space>b :Buffers<CR>
