set nocompatible
set encoding=utf-8

call plug#begin('~/.vim/plugged')

" ========== autocomplete
Plug 'ervandew/supertab'

" ========= snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
  let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


Plug 'tomtom/tcomment_vim'
vnoremap <c-/> :TComment<cr>

" ========== colorschemes 
Plug 'morhetz/gruvbox'
" Plug 'mhartington/oceanic-next'
Plug 'NLKNguyen/papercolor-theme'
Plug 'posva/vim-vue'
Plug 'gko/vim-coloresque'
" =========== git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

"multiple cursors
Plug 'terryma/vim-multiple-cursors'

" ========= syntax helpers
Plug 'dart-lang/dart-vim-plugin'
Plug 'djoshea/vim-autoread'
" Plug 'tpope/vim-rails'
" Plug 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'jparise/vim-graphql'
"Plug 'scrooloose/syntastic' " <--- will eat your ram
" Plug 'tpope/vim-commentary'
Plug 'Chiel92/vim-autoformat'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'
"Plug 'lambdalisue/vim-django-support' " <--- will eat your startup
Plug 'alvan/vim-closetag'
  let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.phtml,*.js,*.jsx,*.coffee,*.erb'
"Syntax highliting
Plug 'moll/vim-node'
Plug 'elzr/vim-json'
Plug 'mattn/emmet-vim'
  let g:user_emmet_expandabbr_key='<Tab>'
  let g:user_emmet_settings = {
  \  'javascript.jsx' : {
  \      'extends': 'jsx',
  \      'quote_char': "'",
  \  },
  \}
  let g:user_emmet_mode = 'a'

Plug 'editorconfig/editorconfig-vim'

Plug 'w0rp/ale'

  let g:ale_sign_error = '●' " Less aggressive than the default '>>'
  let g:ale_sign_warning = '.'
  let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" ========= file tree
Plug  'scrooloose/nerdtree'
  let NERDTreeIgnore = [ '__pycache__',  '\.pyc$', '\.o$', '\.swp', '*\.swp', 'node_modules/' ]
  let NERDTreeShowHidden=1
  let g:NERDTreeDirArrowExpandable = '' 
  let g:NERDTreeDirArrowCollapsible = ''
  let g:NERDTreeGitStatusIndicatorMap = {
           \ 'Modified'  : '✹',
           \ 'Staged'    : '✚',
           \ 'Untracked' : '✭',
           \ 'Renamed'   : '➜',
           \ 'Unmerged'  : '═',
           \ 'Deleted'   : '✖',
           \ 'Dirty'     : '✗',
           \ 'Clean'     : '✔︎',
           \ 'Ignored'   : '',
           \ 'Unknown'   : '?'
           \ }
  "}}}
  
  " autostart nerd-tree
  autocmd vimenter * NERDTree
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:stdn_in") | NERDTree | endif
  " nerdtree toggle
  map <C-n> :NERDTreeToggle<CR>

" ========= navigation
Plug 'christoomey/vim-tmux-navigator'
Plug 'zhaocai/GoldenView.Vim'
  let g:goldenview__enable_default_mapping = 0

" ======= fuzzy find
Plug 'ctrlpvim/ctrlp.vim'

" ======= extras
" Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'bling/vim-airline'
  " airline powerline fonts
  let g:airline_powerline_fonts=1
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'


"icons
Plug 'ryanoasis/vim-devicons'

" Vim-Devicons --------------------------------------------------------------{{{

  let g:NERDTreeGitStatusNodeColorization = 1
  " 
  let g:webdevicons_enable_denite = 1
  let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
  let g:DevIconsEnableFoldersOpenClose = 1
  let g:WebDevIconsOS = 'Darwin'
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tsx'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''

" }}}

call plug#end()            " required
filetype plugin indent on    " required

" ============= extra settings
set autochdir
syntax on
syntax sync minlines=100
syntax sync maxlines=240
set synmaxcol=800

" tabs control
autocmd BufNewFile,BufRead *.php call SetTabsSpacing()
function SetTabsSpacing()
    setlocal tabstop=4
    setlocal shiftwidth=4
endfunction

set tabstop=2
set shiftwidth=2
set expandtab
set ruler
set hidden
let &colorcolumn="80"
:set guioptions-=m " remove menu bar
:set guioptions-=T " remove toolbar
:set guioptions-=r " remove right-hand scroll bar
:set guioptions-=L " remove left-hand scroll bar
":set lines=999 columns=999
set shortmess+=A " disable swap file warning

" hybrid line numbers
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" colorschemes 

set t_Co=256
set background=dark
colorscheme PaperColor
 " let g:airline_theme='oceanicnext'
 " let g:oceanic_next_terminal_bold = 1
 " let g:oceanic_next_terminal_italic = 1

" Dark: monokai-chris, gruvbox
" Light: ChocolatePapaya
"  set background=dark
"  colorscheme gruvbox
"    let g:gruvbox_contrast_dark='default'
"    let g:gruvbox_contrast_light='default'

" split below and right feels more natural
set splitbelow

" no wrapping
set nowrap

" allow backspace immediately after insert
set bs=2

" useful aliases
cnoreabbrev W w
cnoreabbrev Q q

" save undo in a file
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

" incremental and highlight search
set incsearch
set hlsearch

" clear highlighting on return in normal mode
nnoremap <silent> <CR> :noh<CR><CR>

" use global clipboard
set clipboard=unnamed,unnamedplus
