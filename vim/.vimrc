" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<name>                                               <flags>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<basic settings>                                            |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let mapleader=","
syntax on
set splitbelow
set tabstop=4
set shiftwidth=4
set wildmenu
set number
set history=200
set linebreak
set autoindent
set smartindent
set cursorline
set undofile
set scrolloff=5
set omnifunc=syntaxcomplete#Complete
set backspace=indent,eol,start
set completeopt-=preview
set timeoutlen=500
set shell=bash
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<tabs>                                       <tabs settings>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <leader>e <Esc>:tabnew<space>
nnoremap <silent><leader>= <Esc>:+tabnext<CR>
nnoremap <silent><leader>- <Esc>:-tabnext<CR>
nnoremap <silent><leader>1 <Esc>:tabnext 1<CR>
nnoremap <silent><leader>2 <Esc>:tabnext 2<CR>
nnoremap <silent><leader>3 <Esc>:tabnext 3<CR>
nnoremap <silent><leader>4 <Esc>:tabnext 4<CR>
nnoremap <silent><leader>5 <Esc>:tabnext 5<CR>
nnoremap <silent><leader>6 <Esc>:tabnext 6<CR>
nnoremap <silent><leader>7 <Esc>:tabnext 7<CR>
nnoremap <silent><leader>8 <Esc>:tabnext 8<CR>
nnoremap <silent><leader>9 <Esc>:tabnext 9<CR>
nnoremap <silent><leader>gg <Esc>:tabnext<space>
nnoremap <silent><leader>one <Esc>:tabonly<CR>
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<quicksave>                                       <mappings>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <leader>xx <Esc>:xa<CR>
nnoremap <leader>w <Esc>:w<CR>
nnoremap <leader>q <Esc>:q<CR>
nnoremap <leader>x <Esc>:x<CR>
cnoreabbrev W w
cnoreabbrev Q q
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<Vundle>                                    <plugin manager>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" VUNDLE SETUP - plugins

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<auto-pairs bracket matcher>                <plugin><syntax>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Plugin 'jiangmiao/auto-pairs'
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<YCM-generator>                             <plugin><syntax>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
"Plugin 'rdnetto/YCM-Generator'
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<easy-motion>                                <plugin><speed>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Plugin 'easymotion/vim-easymotion'
" =-=-=-=-=-=-=-=-=-
" |<settings>	   |
" =-=-=-=-=-=-=-=-=-
let g:EasyMotion_smartcase = 1
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<neco-ghc>                         <plugin><syntax><haskell>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Plugin 'eagletmt/neco-ghc'
" =-=-=-=-=-=-=-=-=-
" |<settings>	   |
" =-=-=-=-=-=-=-=-=-
let g:haskell_mode_completion_ghc = 1
let g:necoghc_enable_detailed_browse = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<syntastic>                         <plugin><syntax><haskell>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
"Plugin 'vim-syntastic/syntastic'
" =-=-=-=-=-=-=-=-=-
" |<settings>	   |
" =-=-=-=-=-=-=-=-=-
"let g:syntastic_mode_map = {
"   \ "mode": "passive",
"   \ "active_filetypes": ["haskell"],
"   \ "passive_filetypes": [] }

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_loc_list_height = 2
"let g:syntastic_check_on_wq = 0
"let g:syntastic_disabled_filetypes=['cpp', 'c']
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<vim-syntax-extra>                <plugin><syntax><disabled>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Plugin 'justinmk/vim-syntax-extra'
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<space-vim-dark theme>                       <plugin><theme>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Plugin 'liuchengxu/space-vim-dark'
" =-=-=-=-=-=-=-=-=-
" |<settings>	   |
" =-=-=-=-=-=-=-=-=-
"set termguicolors
"hi Comment cterm=italic
"set t_8f=[38;2;%lu;%lu;%lum
"set t_8b=[48;2;%lu;%lu;%lum
"colorscheme space-vim-dark
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<one-dark>                                   <plugin><theme>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Plugin 'joshdick/onedark.vim'
"syntax on
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
set termguicolors
colorscheme onedark
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<airline plugin>                       <plugin><convenience>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Plugin 'vim-airline/vim-airline'
" =-=-=-=-=-=-=-=-=-
" |<settings>	   |
" =-=-=-=-=-=-=-=-=-
set laststatus=2
let g:airline_powerline_fonts = 1
"let g:airline_theme="violet"
let g:airline_theme="onedark"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_close_button = 0
"let g:airline#extensions#tabline#show_tabs = 1
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<YouCompleteMe>           <plugin><semantic><syntax><c++><c>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Plugin 'Valloric/YouCompleteMe'
" =-=-=-=-=-=-=-=-=-
" |<settings>	   |
" =-=-=-=-=-=-=-=-=-
let g:ycm_confirm_extra_conf = 0
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_complete_in_comments = 1
let g:ycm_global_ycm_extra_conf = '~/ycm_global_conf/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_semantic_triggers = {'haskell' : ['.', '<- ', '| ']}
nnoremap <silent><leader>f <Esc>:YcmCompleter FixIt<CR><Esc>:ccl<CR>
"nnoremap <leader>ty <Esc>:YcmCompleter GetType<CR>
"let g:ycm_add_preview_to_completeopt = 1
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Put your non-Plugin stuff after this line
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
"|<cursor settings>                                            |
"|	<normal mode - block>                                      |
"|	<insert mode - iBeam>                                      |
"|	<replace mode - underline>                                 |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let &t_SI = "\<Esc>[5 q"
let &t_SR = "\<Esc>[3 q"
let &t_EI = "\<Esc>[1 q"
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
