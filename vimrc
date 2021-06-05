let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'plasticboy/vim-markdown'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/inkarkat/vim-ReplaceWithRegister'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

" some basics:
	let mapleader = " "
	set nocompatible
	filetype plugin indent on
	syntax on
	set encoding=utf-8
	set number relativenumber
	set autoindent
	set lbr " line break
	set backspace=indent,eol,start " allow backspacing over everything
	set expandtab
	set tabstop=4
	set shiftwidth=4
	set softtabstop=4
    set mouse+=a " enable mouse mode (scrolling, selection, etc)
    if &term =~ '^screen'
        " tmux knows the extended mouse mode
        set ttymouse=xterm2
    endif
    set nofoldenable " disable folding by default
" remove search highlights
    nnoremap <C-n> :noh<return>
" tab completion for files/bufferss
    set wildmode=longest,list
    set wildmenu
" Enable autocompletion:
	set wildmode=longest,list,full
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright
" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>
" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritePre * %s/\n\+\%$//e
	autocmd BufWritePre *.[ch] %s/\%$/\r/e
" Easier split navigations
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>
" Disable the default Vim startup message.
	set shortmess+=I
" Always show the status line at the bottom, even if you only have one window open.
	set laststatus=2
" case-insensitive search
	set ignorecase
" Enable searching as you type, rather than waiting till you press enter.
	set incsearch
" Unbind some useless/annoying default key bindings.
	nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
" Disable audible bell because it's annoying.
	set noerrorbells visualbell t_vb=
" show matching braces when text indicator is over them
	set showmatch
" open fiile to the side with gf
    nnoremap <C-w>f :vertical wincmd f <CR>

"---------------------
" Plugin configuration
"---------------------

" nerdtree
    nnoremap <Leader>n :NERDTreeToggle<CR>
    nnoremap <Leader>f :NERDTreeFind<CR>

" easymotion mappings
	nmap s <Plug>(easymotion-f2)

" incsearch
    map / <Plug>(incsearch-forward)
    map ? <Plug>(incsearch-backward)
    map g/ <Plug>(incsearch-stay)

" markdown
    let g:markdown_fenced_languages = [
        \ 'bash=sh',
        \ 'c',
        \ 'coffee',
        \ 'erb=eruby',
        \ 'javascript',
        \ 'json',
        \ 'perl',
        \ 'python',
        \ 'ruby',
        \ 'yaml',
        \ 'go',
        \ 'racket',
        \ 'haskell',
    \]
    let g:markdown_syntax_conceal = 0
    let g:markdown_folding = 1
" vim-airline-theme
    let g:airline_theme='simple'
" markdown
    nmap <Leader>md :MarkdownPreviewToggle<CR>
