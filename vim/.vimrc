" ============================
" leader key
" ============================
let mapleader=" "

" ============================
" 基础设置
" ============================
set nocompatible
syntax on              " 启用语法高亮
set mouse=a            " 启用鼠标
set number             " 显示行号
set relativenumber     " 相对行号（可选）
set autoindent         " 自动缩进
set smartindent        " 智能缩进
set tabstop=4
set shiftwidth=4
set expandtab          " 用空格替代 Tab
set clipboard=unnamedplus   " 使用系统剪贴板（若支持）

" ============================
" 键位设置
" ============================

" jj / kk 回到 Normal 模式
inoremap jj <Esc>
inoremap kk <Esc>

" H / L 跳到行首行尾
nnoremap H ^
nnoremap L $

" ============================
" 自动补全括号
" ============================
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" 如果你希望在按 Enter 时自动在括号中换行：
" inoremap { {<CR>}<Esc>O

" ============================
" 自动格式化
" ============================
" 使用 = 自动格式化（内置功能，无需额外插件）
" 例如：gg=G  会格式化整个文件
nnoremap <leader>f gg=G

" ============================
" 更好用的一些增强（可选）
" ============================
set showmatch       " 匹配括号高亮
set cursorline      " 高亮当前行
set ignorecase      " 搜索忽略大小写
set smartcase       " 如果有大写字母，则区分大小写

" 保存文件时自动去除行尾空格
autocmd BufWritePre * %s/\s\+$//e

" 全选文本
nnoremap <C-a> ggVG