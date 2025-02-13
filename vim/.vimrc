syntax on
setlocal noswapfile " 不要生成swap文件
set bufhidden=hide " 当buffer被丢弃的时候隐藏它
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=2 " 设定 << 和 >> 命令移动时的宽度为 2
set softtabstop=2 " 使得按退格键时可以一次删掉 2 个空格
set tabstop=2 " 设定 tab 长度为 2
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes " 设置备份时的行为为覆盖
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=1 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set nospell "无拼写检查
set clipboard=unnamed,unnamedplus "系统剪贴板
"set foldenable " 开始折叠
"set foldmethod=syntax " 设置语法折叠
"set foldcolumn=0 " 设置折叠区域的宽度
"setlocal foldlevel=1 " 设置折叠层数为 1
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠
set statusline=%t

filetype plugin indent on

set showmatch          " Show matching brackets.
set ignorecase         " Do case insensitive matching
set smartcase          " Do smart case matching
set incsearch          " Incremental search
set hidden
set t_Co=256             " 开启256色支持


nnoremap E $
nnoremap B ^


set background=dark

call plug#begin()

"Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()



" 启用 signcolumn 来显示符号
set signcolumn=yes

let g:gitgutter_highlight_lines = 1

"colorscheme sorbet

" 自定义 gitgutter 的符号为粗竖线
let g:gitgutter_sign_added = '┃'
let g:gitgutter_sign_modified = '┃'
let g:gitgutter_sign_removed = '┃'
let g:gitgutter_sign_removed_first_line = '┃'
let g:gitgutter_sign_removed_above_and_below = '┃'
let g:gitgutter_sign_modified_removed = '┃'

highlight SignColumn guibg=NONE ctermbg=NONE


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"                       
"" 设置 ctags 路径
"set tags=./.tags;,.tags
"
""设置cscope
"if has("cscope")
"	set cspc=3			"指定在查找结果中显示多少级文件路径,默认值0表示显示全路径,1表示只显示文件名"
"	if filereadable(".cscope.out") 
"		cs add $PWD/cscope.out $PWD
"		"cs add cscope.out
"	else" 子目录打开，向上查找
"		let cscope_file=findfile(".cscope.out", ".;")
"		if !empty(cscope_file) && filereadable(cscope_file)
"		  let cscope_pre=matchstr(cscope_file, ".*/")
"			exe "cs add" cscope_file cscope_pre
"		endif
"	endif
"	set nocsverb
"endif
"
"noremap <leader>cs :cs find s 
"noremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"noremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"noremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"noremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"noremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"noremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"noremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"noremap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"
"
"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
