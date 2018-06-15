" File: init.vim
" Author: Stefan Pantic <stefanpantic13@gmail.com>
" Source: https://github.com/stefanpantic/dotfiles/nvim


" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" General settings.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Basic settings for a sane environment.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let mapleader=","
syntax on
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set history=200
set incsearch
set inccommand=nosplit
set linebreak
set autoindent
set smartindent
set cursorline
set scrolloff=10
set omnifunc=syntaxcomplete#Complete
set backspace=indent,eol,start
set completeopt-=preview
set shell=/bin/bash
set autochdir
set number relativenumber
set colorcolumn=120
set nocompatible
"set nohlsearch
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Normal timeout.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set notimeout
set ttimeout
set ttimeoutlen=10
"set timeoutlen=500
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Wildmenu completion.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set wildmenu " I'm a real wild one, wild one...
set wildignore+=.hg,.git,.svn "ignore version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "ignore binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "ignore compiled object files
set wildignore+=*.sw? "ignore Vim swap files
set wildignore+=*.DS_Store "ignore MacOS bullshit
set wildignore+=*.dSYM/ "ignore debug info
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Return to same line on reopen.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Swap, backup, undo files.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set undofile
set backup
set noswapfile " it's 2017
set undodir=~/.config/nvim/tmp/undo//     " undo files
set backupdir=~/.config/nvim/tmp/backup// " backups
set directory=~/.config/nvim/tmp/swap//   " swap files
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Tabs.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <leader>e <Esc>:tabedit<space>
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
" Window switching/opening.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent>vv <C-w>v
nnoremap <leader>v <Esc>:vsplit<space>
nnoremap <leader>H <Esc>:split<space>
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Quicksaving.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
"nnoremap <leader>xx <Esc>:xa<CR>
"nnoremap <leader>w <Esc>:w<CR>
"nnoremap <leader>q <Esc>:q<CR>
"nnoremap <leader>x <Esc>:x<CR>
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq
cnoreabbrev WQ wq
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Frequent spelling errors.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
iab retrn return
iab reutrn return
iab inclue include
iab inlcude include
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Change line numbering.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <silent><leader>rn <Esc>:set rnu<CR>
nnoremap <silent><leader>nrn <Esc>:set nornu<CR>
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Change line numbering on mode change.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Nohlsearch made easy.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <silent><leader>hh <Esc>:noh<CR>
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Normal movement in wrapped lines.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Make moving to begin/end of line usable.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap H ^
nnoremap L $
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Clean trailing whitespace.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <silent><leader>ss <Esc>mz:%s/\s\+$//<CR>:let @/=''<CR>`z
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" In case of YCM failure break glass.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
"inoremap <leader>n <C-n>
"inoremap <leader>p <C-p>
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" F*ck me up fam aka panic mode.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <leader>??? ggVGg?
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Cursor settings.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" NOTE: don't need this with neovim, doesn't work properly
" 		on some terminal emulators
"let &t_SI = "\<Esc>[5 q" " normal mode - block
"let &t_SR = "\<Esc>[3 q" " replace mode - underline
"let &t_EI = "\<Esc>[1 q" " insert mode - line
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" vim-plug: 'Plugin manager'.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Install and setup vim-plug if necessary.
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" Start plugin manager
call plug#begin('~/.config/nvim/plugged')
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Plugins.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Plug 'jiangmiao/auto-pairs'
"Plug 'rdnetto/YCM-Generator'
Plug 'easymotion/vim-easymotion'
"Plug 'eagletmt/neco-ghc'
"Plug 'vim-syntastic/syntastic'
Plug 'justinmk/vim-syntax-extra'
Plug 'liuchengxu/space-vim-dark'
"Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'stefanpantic/onedark.vim'
Plug 'yuttie/hydrangea-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
"Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'hdima/python-syntax'
Plug 'bfrg/vim-cpp-modern'
Plug 'python-mode/python-mode'
Plug 'tpope/vim-fugitive'
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
call plug#end()

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Plugin settings.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" easy-motion: 'Smart movement'.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let g:EasyMotion_smartcase = 1

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" neco-ghc: '?'.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
"let g:haskell_mode_completion_ghc = 1
"let g:necoghc_enable_detailed_browse = 1
"autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" sytastic: 'Syntax checker'.
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
" one-dark: 'Theme'.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
let g:onedark_terminal_italics = 1
set termguicolors
colorscheme onedark

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" vim-airline: 'Status and tab bars'.
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
" YouCompleteMe: 'Syntax and semantic completion C/C++'.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let g:ycm_confirm_extra_conf = 0
"let g:ycm_server_python_interpreter = '/usr/bin/python'
"let g:ycm_path_to_python_interpreter = 'usr/bin/python'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/ycm_conf/.ycm_extra_conf.py'
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_semantic_triggers = {'cpp' : ['gl', 'GL']} " for OpenGL intellisence
let g:ycm_error_symbol = ''
let g:ycm_warning_symbol = ''
nnoremap <silent><leader>f <Esc>:YcmCompleter FixIt<CR><Esc>:ccl<CR>
"nnoremap <leader>ty <Esc>:YcmCompleter GetType<CR>
"let g:ycm_add_preview_to_completeopt = 1

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" python-mode: 'Make vim a python IDE'.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let g:pymode_options_max_line_length = 120
let g:pymode_lint_checkers = ['pylint', 'pyflakes', 'pep8', 'mccabe']
