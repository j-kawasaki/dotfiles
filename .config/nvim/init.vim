" General {{{
" Indent
set tabstop=4
set shiftwidth=4
set expandtab
set list
set listchars=tab:»-

" Fold
"set foldlevel=100

" Encoding
set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932

" Font
set guifont=Ricty-Regular-nerd-Powerline\ 11

" Search
set inccommand=split

" Clipboard
set clipboard=unnamed,unnamedplus

" Other
set cursorline
set number
set noshowmode
" }}}

" File Types {{{
augroup vimrc_filetype
  autocmd!
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile *.jenkinsfile set filetype=groovy
  autocmd BufRead,BufNewFile *.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}

  autocmd FileType go :highlight goErr ctermfg=208
  autocmd FileType go :match goErr /\<err\>/
  autocmd FileType html setlocal shiftwidth=2 tabstop=2
  autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
  autocmd FileType json setlocal shiftwidth=2 tabstop=2
  autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
  autocmd FileType vim setlocal shiftwidth=2 tabstop=2 foldmethod=marker
  autocmd FileType vim :highlight link FoldComment SpecialComment
  autocmd FileType vim :match FoldComment /^".*\({{{\|}}}\)/
  autocmd FileType vue setlocal shiftwidth=2 tabstop=2
  autocmd FileType vue syntax sync fromstart
  autocmd FileType xml setlocal shiftwidth=2 tabstop=2
  autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
  autocmd FileType zsh setlocal foldmethod=marker
  autocmd FileType zsh :highlight link FoldComment SpecialComment
  autocmd FileType zsh :match FoldComment /^#.*\({{{\|}}}\)/
  " disable deoplete for lsp
  autocmd FileType ruby call deoplete#custom#buffer_option('auto_complete', v:false)
  autocmd FileType python call deoplete#custom#buffer_option('auto_complete', v:false)
  autocmd FileType python ALEDisable
  autocmd FileType vue call deoplete#custom#buffer_option('auto_complete', v:false)
  autocmd FileType dockerfile call deoplete#custom#buffer_option('auto_complete', v:false)
  autocmd FileType yaml call deoplete#custom#buffer_option('auto_complete', v:false)
  autocmd FileType yaml ALEDisable
  autocmd FileType css call deoplete#custom#buffer_option('auto_complete', v:false)
augroup END

" jj is Esc
inoremap <silent> jj <ESC>

" Plugin {{{
" plugins {{{
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/context_filetype.vim')
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neoyank.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('alvan/vim-closetag')
call dein#add('basyura/TweetVim')
call dein#add('basyura/twibill.vim')
call dein#add('dhruvasagar/vim-table-mode')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('fatih/molokai')
call dein#add('jlanzarotta/bufexplorer')
call dein#add('junegunn/fzf', { 'build': './install --all --no-bash', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
call dein#add('junegunn/gv.vim')
call dein#add('kana/vim-operator-replace')
call dein#add('kana/vim-operator-user')
call dein#add('kassio/neoterm')
call dein#add('leafgarland/typescript-vim')
call dein#add('mattn/sonictemplate-vim')
call dein#add('miyakogi/seiya.vim')
"call dein#add('neoclide/coc.nvim', { 'build': './install.sh nightly'})
call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'release'})
call dein#add('prettier/vim-prettier')
call dein#add('reireias/vim-cheatsheet')
if filereadable(expand('~/.fonts/Ricty-Regular-nerd-Powerline.ttf'))
  call dein#add('ryanoasis/vim-devicons')
endif
call dein#add('simeji/winresizer')
call dein#add('thinca/vim-localrc')
call dein#add('thinca/vim-quickrun')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-surround')
call dein#add('tyru/open-browser.vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('vim-jp/vimdoc-ja')
call dein#add('w0rp/ale')
call dein#add('yuttie/comfortable-motion.vim')

if has('nvim')
  call dein#add('Shougo/deoplete.nvim')
endif

" lazy load
" ansible
call dein#add('pearofducks/ansible-vim', {'on_ft' : 'yaml.ansible'})
" go
call dein#add('fatih/vim-go', {'on_ft' : 'go'})
" js
call dein#add('pangloss/vim-javascript', {'on_ft' : ['javascript', 'vue']})
" markdonw
call dein#add('rcmdnk/vim-markdown', {'on_ft' : 'markdown'})
call dein#add('kannokanno/previm', {'on_ft' : 'markdown'})
" nginx
call dein#add('chr4/nginx.vim', {'on_ft' : 'nginx'})
" plantuml
call dein#add('aklt/plantuml-syntax', {'on_ft' : 'plantuml'})
" python
call dein#add('tmhedberg/SimpylFold', {'on_ft' : 'python'})
" ruby
call dein#add('itmammoth/run-rspec.vim', {'on_ft' : 'ruby'})
call dein#add('tpope/vim-rails', {'on_ft' : 'ruby'})
call dein#add('rlue/vim-fold-rspec', {'on_ft' : 'ruby'})
" sql
call dein#add('vim-scripts/SQLUtilities', {'on_ft' : 'sql'})
" stylus
call dein#add('wavded/vim-stylus', {'on_ft' : 'stylus'})
" terraform
call dein#add('hashivim/vim-terraform', {'on_ft' : 'tf'})
" vue
call dein#add('posva/vim-vue', {'on_ft' : 'vue'})

call dein#end()
" }}}

" dein setting--------------------
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.vim/dein')
  call dein#begin('$HOME/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts------------------------- 
