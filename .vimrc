" Notes {
"
" File: .vimrc
"
" }

" Identify platform {
    silent function! OSX()
    return has('macunix')
    endfunction

    silent function! LINUX()
    return has('unix') && !has('macunix') && !has('win32unix')
    endfunction

    silent function! WINDOWS()
    return  (has('win32') || has('win64')) || has("multi_byte")
    endfunction
" }

" Basic 基本配置{
    " 定义快捷键的前缀，即 <Leader>
    let mapleader=","

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
    set cursorcolumn

    " 高亮显示搜索结果
    set hlsearch

    " 禁止折行
    set nowrap
    " 设置自动折行
    "set wrap

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

    " 让vim 把连续数量的空格视为一个制表符
    set softtabstop=4

    " 设置vim显示字体
    set guifont=YaHei\ Consolas\ Hybrid\ 11.5

    " 编码设置
    set enc=utf-8
    set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

    " 文件格式
    set fileformats=unix,dos
    "set fileformats=unix

    " 语言设置
    set langmenu=zh_CN.UTF-8
    set helplang=cn

    " 启动 vim 时折叠代码
    set foldenable
    " 启动 vim 时关闭折叠代码
    "set nofoldenable
    " 基于缩进或语法进行代码折叠
    set foldmethod=indent
    "set foldmethod=syntax
    " 设置折叠标志宽度
    set foldcolumn =1
    " 指定折叠缩进级别
    set foldlevel =0
" }

" 高级配置 {
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

    " 编码转gbk
    noremap <leader>gbk :e ++enc=gbk<CR>
    noremap <leader>utf :e ++enc=utf-8<CR>

    " Ctrl-A 选中所有内容
    "noremap <silent>  <Leader>a  gg v G

    " 多窗口操作
    noremap <C-J> <C-W>j<C-W>_
    noremap <C-K> <C-W>k<C-W>_
    noremap <C-L> <C-W>l<C-W>_
    noremap <C-H> <C-W>h<C-W>_

    " For clever completion with the :find command
    set path+=**

    " Search
    set ignorecase smartcase
    set grepprg=grep\ -IrsnH

    if WINDOWS()
        set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    endif

    " Mac vim 多行复制
    if OSX()
       "vmap y :w !pbcopy<CR><CR>
       "nmap yy :.w !pbcopy<CR><CR>
       noremap <leader>y :w !pbcopy<CR><CR>
    endif

    " 缩写 ,ctrl-v取消效果
    iab @i wscrlhs@gmail.com

    " 设置对齐线 excellent
     set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
" }

" 自启动设置 {
    "autocmd vimenter * NERDTree
" }

" 插件管理 {
    " PlugInstall [name ...] [#threads]	Install plugins
    " PlugUpdate [name ...] [#threads]	Install or update plugins
    " PlugClean[!]	Remove unlisted plugins (bang version will clean without prompt)
    " PlugUpgrade	Upgrade vim-plug itself
    " PlugStatus	Check the status of plugins
    " PlugDiff	Examine changes from the previous update and the pending changes
    " PlugSnapshot[!] [output path]	Generate script for restoring the current snapshot of the plugins

    set rtp+=/usr/local/opt/fzf

    " vim-plug 
    " 安装  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    " https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    call plug#begin()
    Plug 'VundleVim/Vundle.vim'
    Plug 'junegunn/fzf.vim'
    Plug 'altercation/vim-colors-solarized'
    Plug 'dracula/vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tacahiroy/ctrlp-funky'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'tpope/vim-fugitive'
    Plug 'easymotion/vim-easymotion'
    Plug 'haya14busa/incsearch.vim'
    Plug 'haya14busa/incsearch-easymotion.vim'
    Plug 'haya14busa/incsearch-fuzzy.vim'
    Plug 'mbbill/undotree'
    Plug 'fatih/vim-go'
    Plug 'morhetz/gruvbox'
    Plug 'SirVer/ultisnips'
    Plug 'AndrewRadev/splitjoin.vim'
    Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
    Plug 'chr4/nginx.vim'
    Plug 'tpope/vim-surround'
    Plug 'kshenoy/vim-signature'
     
    if executable('ctags')
       Plug 'majutsushi/tagbar'
    endif

    if OSX()
        Plug 'Valloric/YouCompleteMe'
    endif

    " 插件列表结束
    call plug#end()
" }

" Airline {
    if isdirectory(expand("~/.vim/plugged/vim-airline/"))
        " 设置状态栏主题风格
        "let g:airline_theme='solarized'
        let g:airline_theme='serene'
        "let g:airline_theme='distinguished'

        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#left_sep = ' '
        let g:airline#extensions#tabline#left_alt_sep = '|' " Must be first line
        let g:airline#extensions#tabline#formatter = 'unique_tail'
    endif
" }

" Vim-Color {
    if isdirectory(expand("~/.vim/plugged/vim/"))
        " 配色方案
        set background=dark
        let g:solarized_termcolors=256
        let g:solarized_termtrans=1
        let g:solarized_contrast="normal"
        let g:solarized_visibility="normal"
        "colorscheme dracula
        "colorscheme solarized
        colorscheme gruvbox
    endif
" }

" Nerdtree {
    if isdirectory(expand("~/.vim/plugged/nerdtree/"))
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

        let g:NERDTreeGitStatusIndicatorMapCustom= {
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

        " NERDTress File highlighting
         function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
         exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
         exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
         endfunction

        call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
        call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
        call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
        call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
        call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
        call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
        call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
    endif
" }

" Ctrlp {
    if isdirectory(expand("~/.vim/plugged/ctrlp.vim/"))
        let g:ctrlp_working_path_mode = 'ra'
        nnoremap <silent> <C-p> :CtrlP<CR>
        nnoremap <silent> <C-m> :CtrlPMRU<CR>
        let g:ctrlp_custom_ignore = {
                    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
                    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

        " CtrlP extensions
        let g:ctrlp_extensions = ['funky']

        "ctrlp-funky
        nnoremap <Leader>fu :CtrlPFunky<Cr>
        " narrow the list down with a word under cursor
        nnoremap <Leader>uu :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
        " f you want to have this highlight feature
        let g:ctrlp_funky_matchtype = 'path'
        let g:ctrlp_funky_syntax_highlight = 1
    endif
" }

" Easymotion {
    if isdirectory(expand("~/.vim/plugged/vim-easymotion/"))
        let g:EasyMotion_smartcase = 1

        " keep cursor colum when JK motion
        "let g:EasyMotion_startofline = 0

        " 全局设置成单个<leader>
        "map <Leader> <Plug>(easymotion-prefix)

        map <Leader><leader>h <Plug>(easymotion-linebackward)
        map <Leader><Leader>j <Plug>(easymotion-j)
        map <Leader><Leader>k <Plug>(easymotion-k)
        map <Leader><leader>l <Plug>(easymotion-lineforward)

        " 重复上一次操作, 类似repeat插件, 很强大
        map <Leader><leader>. <Plug>(easymotion-repeat)
    endif
" }

" Incsearch {
    if isdirectory(expand("~/.vim/plugged/incsearch.vim/"))
        " You can use other keymappings like <C-l> instead of <CR> if you want to
        " use these mappings as default search and somtimes want to move cursor with
        " EasyMotion.
        function! s:incsearch_config(...) abort
            return incsearch#util#deepextend(deepcopy({
                        \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
                        \   'keymap': {
                        \     "\<CR>": '<Over>(easymotion)'
                        \   },
                        \   'is_expr': 0
                        \ }), get(a:, 1, {}))
        endfunction

        noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
        noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
        noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

        function! s:config_easyfuzzymotion(...) abort
            return extend(copy({
                        \   'converters': [incsearch#config#fuzzyword#converter()],
                        \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
                        \   'keymap': {"\<CR>": '<Over>(easymotion)'},
                        \   'is_expr': 0,
                        \   'is_stay': 1
                        \ }), get(a:, 1, {}))
        endfunction

        noremap <silent><expr> <Space>/  incsearch#go(<SID>config_easyfuzzymotion())
        noremap <silent><expr> <Space>?  incsearch#go(<SID>config_easyfuzzymotion({'command': '?'}))
        noremap <silent><expr> <Space>g/ incsearch#go(<SID>config_easyfuzzymotion({'is_stay': 1}))
    endif
" }

" YouCompleteMe {
    if isdirectory(expand("~/.vim/plugged/YouCompleteMe/"))
        if OSX()
            let g:acp_enableAtStartup = 0

            " enable completion from tags
            let g:ycm_collect_identifiers_from_tags_files = 1

            " remap Ultisnips for compatibility for YCM
            let g:UltiSnipsExpandTrigger = '<C-j>'
            let g:UltiSnipsJumpForwardTrigger = '<C-j>'
            let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
            let g:ycm_key_invoke_completion = '<c-z>'

            " Enable omni completion.
            autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
            autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
            autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
            autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
            autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
            autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
            autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

           " 颜色配置
           "highlight Pmenu ctermfg=12 ctermbg=0 guifg=#ffffff guibg=#000000
           "highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
           "highlight Conceal guifg=White guibg=Red
           " 由于YCM的警告语句在黑色终端下配色很模糊，修改成较为高亮的蓝底黑字
           "highlight link YcmWarningSection Pmenu

            " Haskell post write lint and check with ghcmod
            " $ `cabal install ghcmod` if missing and ensure
            " ~/.cabal/bin is in your $PATH.
            if !executable("ghcmod")
                autocmd BufWritePost *.hs GhcModCheckAndLintAsync
            endif

            " For snippet_complete marker.
            if !exists("g:spf13_no_conceal")
                if has('conceal')
                    set conceallevel=2 concealcursor=i
                endif
            endif

            " Disable the neosnippet preview candidate window
            " When enabled, there can be too much visual noise
            " especially when splits are used.
            set completeopt-=preview

            " lsp-service
            let s:lsp = '/Users/wscrlhs/work/github/lsp-examples'
            let g:ycm_language_server = [
                \   {
                \     'name': 'php',
                \     'cmdline': [ 'php', expand( s:lsp . '/php/vendor/bin/php-language-server.php' ) ],
                \     'filetypes': [ 'php' ],
                \   },
                \ ]
        endif
    endif
" }

" Undotree {
    " set backup
    if has('persistent_undo')
        " set undo dir
        set undodir=~/.vimundo/

        " So is persistent undo ...
        set undofile

        " Maximum number of changes that can be undone
        "set undolevels=1000

        " Maximum number lines to save for undo on a buffer reload
        "set undoreload=10000
    endif

    if isdirectory(expand("~/.vim/plugged/undotree/"))
        nnoremap <Leader>u :UndotreeToggle<CR>

        " If undotree is opened, it is likely one wants to interact with it.
        let g:undotree_SetFocusWhenToggle=1

        set undofile " Maintain undo history between sessions
        set undodir=~/.vim/undodir
    endif
" }

" Fzf {
    if isdirectory(expand("~/.vim/plugged/fzf.vim/"))
         nnoremap <silent> <Leader>f :Files<CR>
         nnoremap <silent> <Leader>b :Buffers<CR>
    endif
" }

" The_silver_searcher {
    command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>,
      \                 <bang>0 ? fzf#vim#with_preview('up:60%')
      \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
      \                 <bang>0)
    nnoremap <silent> <Leader>A :Ag<CR>
" }

" Vim-Go {
    let g:go_def_mode='gopls'
    let g:go_info_mode='gopls'
    let g:go_fmt_command = "goimports"
    let g:go_fmt_fail_silently = 1
    let g:go_addtags_transform = "camelcase"
    let g:go_highlight_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_extra_types = 1
    let g:go_highlight_build_constraints = 1

    let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
    let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

    " highlight same variable in view
    let g:go_auto_sameids = 1
    let g:go_list_type = "quickfix"
    let g:go_test_timeout = '10s'
    let g:go_textobj_include_function_doc = 0
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
    let g:go_metalinter_deadline = "5s"
    let g:go_fmt_experimental = 1

    " 我自定义的
    noremap <leader>gl :GoLint<CR>
" }


" Vim-Grepper {
    nnoremap <leader>g :Grepper<cr>
    let g:grepper = { 'next_tool': '<leader>g' }


" }

" 防止覆盖,在末尾配置 {
    "add the '$' sign as change command indicator
    set cpoptions+=$

    " 显示输入的命令
    set showcmd

    " 支持使用鼠标
    set mouse=a

    " 打开英语单词的拼写检查 excellent
    set spell spelllang=en_us
" }


" TagBar {
        if isdirectory(expand("~/.vim/plugged/tagbar/"))
            nnoremap <silent> <leader>tt :TagbarToggle<CR>
        endif
"}

" vim-fugitive {
     " Fugitive Conflict Resolution
     nnoremap <leader>gd :Gvdiff!<CR>
     "nnoremap gdh :diffget //2<CR>
     "nnoremap gdl :diffget //3<CR>
" }

" 参考 {

  " https://www.jianshu.com/p/bb91582317ed
" }
