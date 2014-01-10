all: symlinks setup-vim

symlinks:
	chmod +x make_symlinks.sh
	./make_symlinks.sh

setup-vim:
	mkdir -p ../.vim
	cp -r vim/* ../.vim
	chmod +x ../.vim/custom_make.sh
	cd ../.vim/bundle; make -f Makefile init

sensitive:
	multigpg extract zsh_sensitive.tar.gpg zsh_sensitive
	mv zsh_sensitive ../.zsh_sensitive
