"==================================
"
" File: .vimrc
"
"==================================


"==================================
"
" Basic 基本配置    
"
"==================================
" {

    " 定义快捷键的前缀，即 <Leader>
    let mapleader=","

    "通过9跳转到行末尾,0默认跳转到行首
    noremap 9 $

    " 定义快捷键在结对符之间跳转
    noremap <Leader>m %

    " 让配置变更立即生效
    autocmd BufWritePost $MYVIMRC source $MYVIMRC

    " 开启实时搜索功能
    set incsearch

    " 搜索时大小写不敏感
    set ignorecase

    " 关闭兼容模式
    set nocompatible

    " vim 自身命令行模式智能补全
    set wildmenu

    " 禁止光标闪烁
    set gcr=a:block-blinkon0

    " 禁止显示滚动条
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R

    " 禁止显示菜单和工具条
    set guioptions-=m
    set guioptions-=T

    " 总是显示状态栏
    set laststatus=2

    " 显示光标当前位置
    set ruler

    " 开启行号显示
    set number

    " 高亮显示当前行/列
    set cursorline
    " set cursorcolumn

    " 高亮显示搜索结果
    set hlsearch

    " 禁止折行
    "set nowrap
    "设置自动折行
    set wrap 

    " 开启语法高亮功能
    syntax enable
    " 允许用指定语法高亮配色方案替换默认方案
    syntax on

    " 将制表符扩展为空格
    set expandtab

    " 设置编辑时制表符占用空格数
    set tabstop=4

    " 设置格式化时制表符占用空格数
    set shiftwidth=4

    " 让 vim 把连续数量的空格视为一个制表符
    set softtabstop=4

    " 设置 vim 显示字体  
    set guifont=YaHei\ Consolas\ Hybrid\ 11.5

    "编码设置
    set enc=utf-8
    set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
    "语言设置
    set langmenu=zh_CN.UTF-8
    set helplang=cn

    "启动 vim 时折叠代码
    "set foldenable 
    "启动 vim 时关闭折叠代码
    "set nofoldenable
    "基于缩进或语法进行代码折叠
    "set foldmethod=indent
    "set foldmethod=syntax
    "设置折叠标志宽度
    "set foldcolumn =1
    "指定折叠缩进级别
    "set foldlevel=0

    " 换回快捷键
    inoremap jk <esc>l


" }

"==================================
"
" 高级配置
"
" =================================
" {
"
    " 快速编辑vimrc文件
    nnoremap <leader>ev :vsplit $MYVIMRC<cr>
    " 重新加载vimrc文件
    nnoremap <leader>sv :source $MYVIMRC<cr>

    " 单词两边包围字符
    nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
    nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
    nnoremap <leader>< viw<esc>a><esc>hbi<<esc>lel
    nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
    nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
    nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
    nnoremap <leader>** viw<esc>a**<esc>hbi**<esc>lel

    "编码转gbk
    noremap <leader>gbk :e ++enc=gbk<CR>
    noremap <leader>utf :e ++enc=utf-8<CR>
    "set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936

    "Ctrl-A 选中所有内容
    noremap <silent>  <Leader>a  gg v G 
    "多窗口操作
    noremap <C-J> <C-W>j<C-W>_
    noremap <C-K> <C-W>k<C-W>_
    noremap <C-L> <C-W>l<C-W>_
    noremap <C-H> <C-W>h<C-W>_




"  }

"==================================
"
"  插件管理
"
"==================================
" {

    " vundle 环境设置
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim
    " vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'tacahiroy/ctrlp-funky'

    " 插件列表结束
    call vundle#end()
    filetype plugin indent on
    
" }

"==================================
"
"  插件配置
"
"==================================
" {

    " vundle {
        
        " Brief help
        " :PluginList       - lists configured plugins
        " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
        " :PluginSearch foo - searches for foo; append `!` to refresh local cache
        " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
        "
        " see :h vundle for more details or wiki for FAQ
        " Put your non-Plugin stuff after this line

    " }
    "


    " airline {
    
        " 设置状态栏主题风格
        let g:airline_theme='solarized'
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#left_sep = ' '
        let g:airline#extensions#tabline#left_alt_sep = '|' " Must be first line

    " }
    
     set nocompatible     

    " vim-color {
    
        " 配色方案
        set background=dark
        let g:solarized_termcolors=256
        let g:solarized_termtrans=1
        let g:solarized_contrast="normal"
        let g:solarized_visibility="normal"
        colorscheme solarized

    " }
    
    let g:neocomplete#enable_at_startup = 1
   
    " nerdtree {
    
        map <C-e> <plug>NERDTreeTabsToggle<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>

        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=0

        let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }

    " }
    

    " ctrlp {
        let g:ctrlp_working_path_mode = 'ra'
        nnoremap <silent> <C-p> :CtrlP<CR>
        nnoremap <silent> <C-m> :CtrlPMRU<CR>
        let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
        " CtrlP extensions
        let g:ctrlp_extensions = ['funky']

        "funky
        nnoremap <Leader>fu :CtrlPFunky<Cr>

    "}

" }
