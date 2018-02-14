"===================="
"1.基本设置
"===================="

" 关闭vi一致性模式
set nocompatible
" 显示行号
set number
" 开启鼠标控制
set mouse=a
" 命令历史
set history=100
" 设置撤销
	set backup	" 设置备份
	if has('persistent_undo')
		set undofile	
		set undolevels=1000		" 最大撤销次数		
		set undoreload=10000
	endif
" 高亮当前行
set cursorline
" 搜索设置
set incsearch
" 高亮搜索内容
set hlsearch
" 忽略大小写
set ignorecase
" 使用浅色高亮当前行
autocmd InsertLeave *se nocul
autocmd InsertEnter *se cul
" 设置命令行的高度为1
set cmdheight=1
" 共享剪切板
set clipboard+=unnamed
" 新行自动缩进
set smartindent
" 设置自动缩进
set shiftwidth=4

"===================="
"2.主题设置
"===================="
"
" solarized主题设置
	syntax enable
	set background=dark
	if has('gui_running')
		colorscheme solarized
	else
		colorscheme monokai
	endif
" monokai主题设置
	"colorscheme monokai

"===================="
"3.代码相关
"===================="

" 设置Tab缩进格式
set tabstop=4
" 开启语法高亮
syntax on
" 符号匹配
set showmatch

"===================="
"3.插件管理--VimPlug
"===================="

call plug#begin('~/.vim/plugged')

" solarized主题安装
"Plug 'altercation/vim-colors-solarized'
" monokai主题安装
"Plug 'sickill/vim-monokai'
" vim-airline
Plug 'bling/vim-airline'
" vim-airline主题
Plug 'vim-airline/vim-airline-themes'
" powerline字体
Plug 'powerline/fonts'
" 基于airline的番茄时间
Plug 'zuckonit/vim-airline-tomato'
" 自动匹配
Plug 'jiangmiao/auto-pairs'
" NERD tree树目录
Plug 'scrooloose/nerdtree'
" fzf搜索插件
Plug 'junegunn/fzf'
" neocomplete
Plug 'shougo/neocomplete.vim'
" Syntastic
Plug 'scrooloose/syntastic'

call plug#end()

"===================="
"3.插件设置
"===================="

" airline设置
	" airline主题设置
	if has('gui_running')
		let g:airline_theme='solarized'
	else
		let g:airline_theme = 'violet'
	endif	
	" 打开tabline，方便Buffer的查看和切换
	let g:airline#extensions#tabline#enabled = 1
	" 显示buffer数字
	let g:airline#extensions#tabline#buffer_nr_show = 1
	" airline显示颜色
	set t_Co=256
	set laststatus=2
	" 启用powerline字体
	let g:airline_powerline_fonts = 1
	set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Bold\ 11
	" 启用特殊符号，重置airline状态栏
	if !exists('g:airline_symbols')
    	let g:airline_symbols = {}
  	endif
	" powerline symbols
  	let g:airline_left_sep = ''
  	let g:airline_left_alt_sep = ''
  	let g:airline_right_sep = ''
  	let g:airline_right_alt_sep = ''
  	let g:airline_symbols.branch = ''
  	let g:airline_symbols.readonly = ''
  	let g:airline_symbols.linenr = '☰'
  	let g:airline_symbols.maxlinenr = ''
	" 设置切换Buffer快捷键
	nnoremap <C-tab> :bn<CR>
	nnoremap <C-s-tab> :bp<CR>
" airline-tomato插件设置
	" 工作时长 
	let g:tomato#interval = 45 * 60
	" 休息时长
	let g:tomato#rest_time = 10 * 60
	" 语言
	let g:tomato#lang = 'chinese'
	" 修改标志
	let g:tomato#remind = "☻"	" 工作
	let g:tomato#restinfo = "☺"	" 休息
	" 显示时钟
	let g:tomato#show_clock = 1
	" 显示数量
	let g:tomato#show_clock = 1
	let g:tomato#show_count_down = 1
" NERD tree
	" 启用NERD tree快捷键Ctrl+n
	map <C-n> :NERDTreeToggle<CR>
	" 符号替换
	let g:NERDTreeDirArrowExpandable = '▸'
	let g:NERDTreeDirArrowCollapsible = '▾'
	
