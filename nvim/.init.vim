:set number
set encoding=utf-8
set ts=4
set expandtab
set shiftwidth =4
set nocompatible              " be iMproved, required
filetype off                  " required

"=====================================================
" Vundle settings
"=====================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'nvie/vim-flake8'
Plugin 'gmarik/Vundle.vim'
"Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'MunifTanjim/nui.nvim'
Plugin 'morhetz/gruvbox'
Plugin 'BenGH28/neo-runner.nvim', {'do': ':UpdateRemotePlugins'}
Plugin 'jiangmiao/auto-pairs'
"Plugin 'xavierd/clang_complete'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'ycm-core/YouCompleteMe'
"Plugin 'lervag/vimtex'
call vundle#end()                   " required
let g:gruvbox_italic=0
colorscheme gruvbox
 " provide path directly to the library file

"let g:pymode_rope = 0
"let g:pymode_folding = 0

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/simple_ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax = 1
set completeopt=menu

autocmd Filetype cpp setlocal tabstop=4
" make YCM compatible with UltiSnips (using <Ctrl-N>, <Ctrl-P>)
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" commands mappings
nnoremap <F1> :pclose<CR>:silent YcmCompleter GetDoc<CR>
nnoremap <S-F1> :pclose<CR>
nnoremap <C-F1> :YcmCompleter GetType<CR>
nnoremap <F9> :YcmCompleter GoTo<CR>
nnoremap <S-F9> :YcmCompleter GoToReferences<CR>
nnoremap <F10> :YcmCompleter FixIt<CR>

"let g:ycm_use_clangd = 1
let g:ycm_global_ycm_extra_conf='/home/user/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
"autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"C/C++
let g:runner_c_compiler = 'gcc'
let g:runner_cpp_compiler = 'g++'
let g:runner_c_options = '-std=c99 -Wall'
let g:runner_cpp_options = '-std=c++11 -Wall'

"Python
let g:runner_python_ex = 'python3'
let g:runner_python_options = ''

filetype on
filetype plugin on
"filetype plugin indent on

