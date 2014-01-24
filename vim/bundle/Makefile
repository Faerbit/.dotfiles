all: update

init:
	git init
	test -d tlib || git submodule add https://github.com/tomtom/tlib_vim.git tlib
	test -d addon-mw-utils || git submodule add https://github.com/MarcWeber/vim-addon-mw-utils.git addon-mw-utils
	test -d snipmate || git submodule add https://github.com/garbas/vim-snipmate.git snipmate
	test -d snippets || git submodule add https://github.com/honza/vim-snippets.git snippets
	test -d coveragepy || git submodule add https://github.com/alfredodeza/coveragepy.vim coveragepy

update:
	git submodule update
