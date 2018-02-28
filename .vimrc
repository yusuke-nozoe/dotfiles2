" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
	if &compatible
		set nocompatible               " Be iMproved
	endif

	" Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'fatih/vim-go'
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"-------------------------------------------------------------------------------
" Syntax Highlight
"-------------------------------------------------------------------------------

syntax on
au BufNewFile,BufRead *.json.jbuilder,*.docx.caracal set ft=ruby

"-------------------------------------------------------------------------------
" インデント Indent
"-------------------------------------------------------------------------------
set autoindent
set smartindent  " 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする。
set cindent      " Cプログラムファイルの自動インデントを始める

set tabstop=2 shiftwidth=2 softtabstop=0
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
set expandtab
set backspace=indent,eol,start
