" 默认的leader键位是 \
let mapleader="\<Space>"
set cmdheight=2
" set conceallevel=0
set relativenumber nu
syntax on
syntax enable
set autoindent
set ruler " 在状态栏显示光标的当前位置，位于哪一行那一列
" set cursorline
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
" 鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set mps+=<:> " 默认matchpairs=(:),{:},[:]
set showmatch " 输入闭括号时，短暂地跳转到与之匹配的开括号
set matchtime=15 " 控制显示配对括号时间 1.5s
" set paste
set clipboard=unnamed
set nocompatible
set backspace=2
set showmode " 在底部显示，当前处于的模式
set showcmd " 在底部显示当前键入的指令
set t_Co=256
filetype indent on " 开启文件类型检查，并且载入与该类型对应的缩进规则。比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则~/.vim/indent/python.vim
set textwidth=80 " 设置行宽，一行显示多少字符
set wrap " 自动折行，太长的话分成几行显示
set linebreak
set wrapmargin=2 " 制定折行处与编辑窗口的右边缘之间空出的字符数
set scrolloff=5 " 垂直滚动时，光标距离顶部/底部的位置（单位：行）
set sidescrolloff=15 " 水平滚动时，光标距离行首或行尾的位置（单位：字符），该配置在不折行时比较有用
set laststatus=2 " 是否显示状态栏，2表示显示 0 不显示 1 多窗口才显示

" =============== 搜索 ================
set hlsearch " 高量显示搜索结果
set incsearch " 每输入一个字符，就自动跳到第一个配置的结果
set ignorecase " 忽略大小写
set smartcase " 如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感

" ================= 编辑 ==================
" set spell spelllang=en_us " 拼写检查 英语
set nobackup " 不创建备份文件 该文件的标志是，原文件名的末尾，加了一个波浪号
set noswapfile " 不创建交换文件，交换文件的作用是系统崩溃时恢复文件，文件的开头是. 结尾是.swp
set undofile " 保留撤销历史
set undodir=$HOME/.vim/undodir " linux下适用
set autochdir " 自动切换工作目录
set noerrorbells " 出错时，不要发出响声
set visualbell " 出错时，闪屏
set history=1000 " vim记住多少次历史操作
set autoread " 打开文件监视，如果在编辑过程中文件发生外部改变，会提示
set autowrite
set wildmenu
set wildmode=longest:list,full " 命令模式下，底部操作指令按下tab自动补全，第一次tab，会显示所有匹配的操作指令清单，第二次tab，依次选择各个指令

"==============================================================================
" 主题配色 
"==============================================================================
colorscheme gruvbox
set background=dark


" ========================================================================
" 映射
" ========================================================================

" 窗口映射
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 取消 Vim 查找高亮显示
noremap <silent><leader>/ :nohls<CR>

"设置切换Buffer快捷键"
nnoremap <C-n> :bn<CR>
" nnoremap <C-P> :bp<CR> " 和ctrlp快捷键冲突了
nnoremap <C-d> :bdelete<CR>




call plug#begin('~/.config/nvim/plugged')
" 一个强大的对齐文本的插件
Plug 'junegunn/vim-easy-align'

" vim startify
Plug 'mhinz/vim-startify'

" indentLine
Plug 'Yggdroot/indentLine'

" nerdtree and show git status flags
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" gitgutter
Plug 'airblade/vim-gitgutter'
" git wrapper
Plug 'tpope/vim-fugitive'
" gv.vim  查看git提交记录，配合vim-fugitive使用 :GV
Plug 'junegunn/gv.vim'
" gitbranch 配合lightline使用
Plug 'itchyny/vim-gitbranch'

" surround
Plug 'tpope/vim-surround'

" vim-easymotion
Plug 'easymotion/vim-easymotion'

" 配合Nerd Font的一些图标
Plug 'ryanoasis/vim-devicons'

" 自动注释的功能
Plug 'preservim/nerdcommenter'

" coc-nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Ctrlp Full path fuzzy file buffer mru tag ... finder for vim
Plug 'ctrlpvim/ctrlp.vim'

" nvim-colorizer.lua
Plug 'norcalli/nvim-colorizer.lua'


" far.vim  批量搜索替换
Plug 'brooth/far.vim'

" tagbar 依赖ctags https://ctags.io/
" debian 可以直接通过apt下载 universal-ctags
Plug 'preservim/tagbar'

" 高亮感兴趣的单词，便于阅读代码 快捷键 <leader> k
Plug 'lfv89/vim-interestingwords'

" 代码注释 快捷键gc  gcgc
Plug 'tpope/vim-commentary'

" telescope.nvim
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

" theme
Plug 'morhetz/gruvbox'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()




" ================================ 插件配置 ================================

" =================== airline =========================
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='violet'

" ================= vim-easy-align =================
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" ==================  indentLine ===============
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_setConceal = 0
let g:indentLine_enabled = 1
" let g:indentLine_concealcursor = 'inc'
" let g:indentLine_conceallevel = 2


" ==================  nerdtree  ================
map <silent> <F3> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


" ================  gitgutter  =====================
" To turn on line number highlighting by default
let g:gitgutter_highlight_linenrs = 1

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)



" ================  easy-motion  ========================
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)



" ================= coc.nvim ================================
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-pyright', 'coc-css', 'coc-html', 'coc-cssmodules', 'coc-eslint', 'coc-git', 'coc-stylelintplus', 'coc-snippets', 'coc-sql', 'coc-xml', 'coc-yaml', 'coc-vetur', 'coc-emmet', 'coc-go', 'coc-rust-analyzer', 'coc-pairs', 'coc-markdownlint', 'coc-pairs', 'coc-lists', 'coc-tabnine']

" coc.nvim 配置golang 自动导入 missing imports and auto-format 配和coc-go使用
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

" coc.nvim 保存.go文件时，报错
autocmd BufWritePre *.go silent! call CocAction('runCommand', 'editor.action.organizeImport')



" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif



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

" ===================== ctrlp =========================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" When invoked without an explicit starting directory, CtrlP will set its local working directory according to this variable
let g:ctrlp_working_path_mode = 'ra'
" If a file is already open, open it again in a new pane instead of switching to the existing pane
let g:ctrlp_switch_buffer = 'et'

" Exclude files and directories using Vim's wildignore and CtrlP's own g:ctrlp_custom_ignore. If a custom listing command is being used, exclusions are ignored
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Use a custom file listing command
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" =================== tagbar =================================
nmap <F8> :TagbarToggle<CR>

" ============================ telescope =====================
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

