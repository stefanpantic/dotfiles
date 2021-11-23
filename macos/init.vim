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
set expandtab
set tabstop=2
set shiftwidth=2
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
set colorcolumn=100
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
" Swap, backup, undo files.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
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
nnoremap ;<C-K> <C-W><C-K>
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
cnoreabbrev Wn wn
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
" Set explicit syntax highlight for certain file types
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
au BufReadPost CMakeAddon.txt set syntax=cmake
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Go-to git conflict markers
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
nnoremap <leader>c /\m\(<<<<<<< \\|=======\n\\|>>>>>>> \)<cr>
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
"Plug 'Valloric/YouCompleteMe'
"Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'hdima/python-syntax'
Plug 'bfrg/vim-cpp-modern'
"Plug 'python-mode/python-mode'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'jremmen/vim-ripgrep'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'gilligan/vim-lldb'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'jaxbot/semantic-highlight.vim'
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
"let g:pymode_options_max_line_length = 120
"let g:pymode_lint_checkers = ['pylint', 'pyflakes', 'pep8', 'mccabe']

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" todo-comments: Smart highlight TODO, etc.
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
lua << EOF
  require("todo-comments").setup {
    highlight = {
      before = "", -- "fg" or "bg" or empty
      keyword = "bg", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
      after = "", -- "fg" or "bg" or empty
      pattern = [[.*<(KEYWORDS)\s*]], -- pattern used for highlightng (vim regex)
      comments_only = true, -- uses treesitter to match keywords in comments only
    },
  }
EOF
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" nvim-lspconfig: LSP configuration
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set completeopt=menuone,noinsert
let g:completion_sorting = 'none'
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_matching_ignore_case = 1
let g:completion_matching_smart_case = 1
let g:completion_trigger_character = ['.', '::']
let g:completion_enable_auto_paren = 1
set shortmess+=c

lua <<EOF
require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
EOF

autocmd Filetype cpp setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)

" Auto-format files when possible prior to saving
"autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1000)

" Original source with modifications
" https://www.reddit.com/r/neovim/comments/j2ny8b/is_there_a_way_to_open_a_new_tab_when_using_lua/g76ogzr?context=3
" Normal jump to location when current buffer is not modified, otherwise open new tab.
lua <<EOF
local api = vim.api
local util = vim.lsp.util
local callbacks = vim.lsp.handlers
local log = vim.lsp.log

local location_callback = function(_, method, result)
  if result == nil or vim.tbl_isempty(result) then
    local _ = log.info() and log.info(method, 'No location found')
    return nil
  end

  api.nvim_command('tabnew')

  if vim.tbl_islist(result) then
    util.jump_to_location(result[1])
    if #result > 1 then
      util.set_qflist(util.locations_to_items(result))
      api.nvim_command("copen")
    end
  else
    util.jump_to_location(result)
  end
end

callbacks['textDocument/declaration']    = location_callback
callbacks['textDocument/definition']     = location_callback
callbacks['textDocument/typeDefinition'] = location_callback
callbacks['textDocument/implementation'] = location_callback
EOF

nnoremap <silent> <leader>d    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <leader>i    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>f <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> Q     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>p <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <leader>r    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" nerdtree: File tree browser
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let g:NERDTreeShowHidden=1
let g:NERDTreeMapJumpParent = '-'
let g:NERDTreeWinSize = 40

nnoremap <silent> <leader>nt :NERDTree<CR>
nmap - :NERDTreeCWD<cr>
autocmd BufRead * nmap - :NERDTreeFind<CR>

autocmd BufWinEnter * NERDTreeMirror

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

augroup nerd_loader
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,BufNew *
        \  if isdirectory(expand('<amatch>'))
        \|   call plug#load('nerdtree')
        \|   execute 'autocmd! nerd_loader'
        \| endif
augroup END

autocmd! User nerdtree call AddNerdTreeMapping()

function! AddNerdTreeMapping()
  call NERDTreeAddKeyMap({
          \ 'key': 'yy',
          \ 'callback': 'NERDTreeYankCurrentNode',
          \ 'quickhelpText': 'put full path of current node into the default register' })
endfunction

function! NERDTreeYankCurrentNode()
    let n = g:NERDTreeFileNode.GetSelected()
    if n != {}
        call setreg('"', n.path.str())
    endif
endfunction

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" ctrlp: Go-to file utility
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
let g:ctrlp_extensions = ['line', 'mixed']
let g:ctrlp_map = '<C-N>'
let g:ctrlp_cmd = 'CtrlP'

" Set delay to prevent extra search
let g:ctrlp_lazy_update = 350

" Set no file limit, we are building a big project
let g:ctrlp_max_files = 0

" Don't clear cache to improve startup
let g:ctrlp_clear_cache_on_exit = 0

" If rg is available use it as filename list generator instead of 'find'
if executable('rg')
    set grepprg=rg\ --nocolor
    let g:ctrlp_user_command = 'rg %s --hidden --files --color=never --glob ""'
    let g:ctrlp_use_caching = 1
endif

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

nnoremap <C-F> :CtrlPLine<cr>
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" vim-cpp-modern: Better syntax highlight for C++
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1
"" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
