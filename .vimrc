syntax on
set number
set autoindent
set expandtab
set noswapfile
set title
set hlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set noet
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

colorscheme molokai

:command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g
:command! -range=% -nargs=0 Tab2Space execute '<line1>,<line2>s#^\t\+#\=repeat(" ", len(submatch(0))*' . &ts . ')'
:command! -range=% -nargs=0 Space2Tab execute '<line1>,<line2>s#^\( \{'.&ts.'\}\)\+#\=repeat("\t", len(submatch(0))/' . &ts . ')'
