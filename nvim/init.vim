" File: init.vim
" Author: Stefan Pantic <stefanpantic13@gmail.com>
" Source: https://github.com/stefanpantic/dotfiles/nvim
"
" Section marker:
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<name>                                                       <flags>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" Subsection marker:
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<name>                                                      |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<general settings>               <making terminal vim behave sanely>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<basic settings>                                            |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let mapleader=","
syntax on
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set number
set history=200
set linebreak
set autoindent
set smartindent
set cursorline
set scrolloff=5
set omnifunc=syntaxcomplete#Complete
set backspace=indent,eol,start
set completeopt-=preview
set shell=/bin/bash
set autochdir
set nohlsearch

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<normal timeout>                                            |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set notimeout
set ttimeout
set ttimeoutlen=10
"set timeoutlen=500

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<wildmenu completion>                                       |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set wildmenu " I'm a real wild one, wild one...
set wildignore+=.hg,.git,.svn "ignore version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "ignore binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "ignore compiled object files
set wildignore+=*.sw? "ignore Vim swap files
set wildignore+=*.DS_Store "ignore MacOS bullshit
set wildignore+=*.dSYM/ "ignore debug info

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<return to same line on reopen>                             |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<swap, backup, undo>                                        |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set undofile
set backup
set noswapfile " it's 2017
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<tab settings>                                              |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <leader>e <Esc>:tabnew<space>
nnoremap <silent><leader>= <Esc>:tabnext<CR>
nnoremap <silent><leader>- <Esc>:tabprevious<CR>
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
" |<quicksaving>                                               |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
"nnoremap <leader>xx <Esc>:xa<CR>
"nnoremap <leader>w <Esc>:w<CR>
"nnoremap <leader>q <Esc>:q<CR>
"nnoremap <leader>x <Esc>:x<CR>
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" <change line numbering>                                      |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <silent><leader>rn <Esc>:set rnu<CR>
nnoremap <silent><leader>nrn <Esc>:set nornu<CR>

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<normal movement in wrapped lines, it's 2017 Vim>           |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<make moving to begin/end usable>                           |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap H ^
nnoremap L $

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" <clean trailing whitespace>                                  |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <silent><leader>ss <Esc>mz:%s/\s\+$//<CR>:let @/=''<CR>`z

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
"|<cursor settings>                                            |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let &t_SI = "\<Esc>[5 q" " normal mode - block
let &t_SR = "\<Esc>[3 q" " replace mode - underline
let &t_EI = "\<Esc>[1 q" " insert mode - line

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
"|<fixing MacOS annoyance>                                     |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
inoremap § ~

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" </general settings>                                                  |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-



" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<Vundle>                                            <plugin manager>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" VUNDLE SETUP - plugins

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" <let Vundle manage itself, Vundleception>                    |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Plugin 'VundleVim/Vundle.vim'

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<plugins>                                                   |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Plugin 'jiangmiao/auto-pairs'
"Plugin 'rdnetto/YCM-Generator'
Plugin 'easymotion/vim-easymotion'
Plugin 'eagletmt/neco-ghc'
"Plugin 'vim-syntastic/syntastic'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<plugin settings>                                    <flags>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<easy-motion>                     <speedy movements>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let g:EasyMotion_smartcase = 1

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<neco-ghc>                         <syntax><haskell>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let g:haskell_mode_completion_ghc = 1
let g:necoghc_enable_detailed_browse = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<syntastic>                        <syntax><haskell>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
"let g:syntastic_mode_map = {
"   \ "mode": "passive",
"   \ "active_filetypes": ["haskell"],
"   \ "passive_filetypes": [] }
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_loc_list_height = 2
"let g:syntastic_check_on_wq = 0
"let g:syntastic_disabled_filetypes=['cpp', 'c']

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<one-dark>                                   <theme>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
set termguicolors
colorscheme onedark

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<vim-airline>                          <convenience>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme="onedark"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
"let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_close_button = 0
"let g:airline#extensions#tabline#show_tabs = 1

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |<YouCompleteMe <3>        <semantic><syntax><c++><c>|
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let g:ycm_confirm_extra_conf = 0
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_global_ycm_extra_conf = '~/ycm_global_conf/.ycm_extra_conf.py'
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_semantic_triggers = {'haskell' : ['.', '<- ', '| ']}
nnoremap <silent><leader>f <Esc>:YcmCompleter FixIt<CR><Esc>:ccl<CR>
"nnoremap <leader>ty <Esc>:YcmCompleter GetType<CR>
"let g:ycm_add_preview_to_completeopt = 1

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |</plugin settings>                                          |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

call vundle#end()            " required
filetype plugin indent on    " required

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" |</Vundle>                                                           |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
