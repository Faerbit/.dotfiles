alias sudo='sudo '
alias tasks="ps -u fab"
alias update-grub="grub-mkconfig -o /boot/grub/grub.cfg"
alias sml2p='/home/fab/.Sync-my-L2P/Sync-my-L2P.run'
alias updatemirrors='reflector --verbose -p http -l 7 --sort rate --sort delay --country 'Germany' --save /etc/pacman.d/mymirrorlist'
alias ssh='ssh '
alias ping='ping '
alias aur-update='yaourt -Sbu --aur --noconfirm'
alias clear-orphans='pacman -Rns $(pacman -Qqdt)'
alias rmtex='rm *.log; rm *.aux'
alias ghibernate='gnome-screensaver-command --lock && sudo pm-hibernate'
alias load-vboxdrivers='modprobe -a vboxdrv vboxnetadp vboxnetflt'
#overwrite "default(?)" with my own function
alias cdt='cdtemp'
#Now with extra shibe
alias wow='git status'
alias very='git'
alias much='git'
alias such='git'
#Do not store commmands with leading space
setopt HIST_IGNORE_SPACE
#Do not store ls and cd
alias cd=' cd'
alias ls=' ls --color=auto'
alias resource='source ~/.zshrc'
if [ -f .zsh_environment ]
then
  source ~/.zsh_environment
fi
#for accounts whithout root
if [ -f .zsh_grml ]
then
  source ~/.zsh_grml
fi
#for untrusted machines
if [ -f .zsh_sensitive ]
then
    source ~/.zsh_sensitive
fi
source ~/.zsh_functions
export EDITOR=vim
export PATH=$PATH:/home/fab/bin
