" Author: Alexnader Kellough
" Version: 9.1.*
" Description: Yet another Vim Config.
""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""" Plugins """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Codeium Autocomplete
Plug 'Exafunction/codeium.vim'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Syntax Highlighting
Plug 'neoclide/coc.nvim'

" Inline References
Plug 'fs111/pydoc.vim'

" Latex
Plug 'lervag/vimtex'

" Markdown
Plug 'plasticboy/vim-markdown'

" Vimwiki
Plug 'vimwiki/vimwiki'

" CSS Color Preview
Plug 'ap/vim-css-color'

" Vim Surround
Plug 'tpope/vim-surround'

" Autoformat
Plug 'vim-autoformat/vim-autoformat'

" Autosave
Plug '907th/vim-auto-save'

" Rust Syntax
Plug 'rust-lang/rust.vim'

" Vim Emoji
Plug 'https://gitlab.com/gi1242/vim-emoji-ab'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""" Plugins Config """""""""""""
""""""""""""""""""""""""""""""""""""""""""""""

" Colorscheme
colorscheme SerialExperimentsLain

" Highlighting
let g:python_highlight_all = 1

" Codeium Autocomplete
let g:codeium_enabled = v:true

" Inline References
let g:pydoc_cmd = 'python3 -m pydoc'

" Latex
let g:vimtex_view_method = 'zathura'

" Markdown
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_folding_disabled = 1

" Vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
            \ 'syntax': 'markdown', 'ext': '.md'}]

" CSS Color Preview
let g:cssColorVimDoNotMessMyUpdatetime = 1

" Vim Surround
let g:surround_no_insert_mappings = 1

" Autoformat
let g:formatter_yapf_style = 'pep8'
au BufWrite * :Autoformat

" Autosave
let g:auto_save = 1

" Vim Emoji
au FileType html,php,markdown,mmd,text,mail,gitcommit,rust,vimrc
            \ runtime macros/emoji-ab.vim

" Rust
let g:rustfmt_autosave = 1

"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""" General """""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""
set number
set relativenumber

set clipboard=unnamed

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set mouse=a
set cursorline

syntax on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""" Key Bindings """""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""
