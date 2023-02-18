map zl :set splitright<CR>:vsplit<CR>
map zh :set nosplitright<CR>:vsplit<CR>
map zk :set nosplitbelow<CR>:split<CR>
map zj :set splitbelow<CR>:split<CR>

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map ne :tabe<CR>
map eh :-tabnext<CR>
map el :+tabnext<CR>


" ==================== Settings ===========================
set number






" ==================== Install Plugins with Vim-Plug ====================
call plug#begin('$HOME/.config/nvim/plugged')

" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'
Plug 'preservim/nerdtree'
" vimwiki
Plug 'vimwiki/vimwiki'


" vimtex

Plug 'lervag/vimtex'
" Plug show 

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

set re=0
"===================== NERDTree =====================
map tt :NERDTreeToggle<CR>


"===================== vimwiki ======================
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" ==================== vim-markdown-toc ====================
"let g:vmt_auto_update_on_save = 0
"let g:vmt_dont_insert_fence = 1
let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'





"===================== vimtex =======================
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0


let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'xelatex'
autocmd Filetype tex setl updatetime=3
