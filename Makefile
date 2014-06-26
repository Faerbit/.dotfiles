all: symlinks setup-vim

symlinks:
	chmod +x make_symlinks.sh
	./make_symlinks.sh

setup-vim:
	mkdir -p ../.vim
	cp -r vim/* ../.vim
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	chmod +x ../.vim/custom_make.sh

sensitive:
	multigpg extract zsh_sensitive.tar.gpg zsh_sensitive
	mv zsh_sensitive ../.zsh_sensitive
