alias sudo='sudo '
alias tasks="ps -u fab"
alias update-grub="grub-mkconfig -o /boot/grub/grub.cfg"
alias sml2p='/home/fab/.Sync-my-L2P/Sync-my-L2P.run'
alias updatemirrors='reflector --verbose -p http -l 7 --sort rate --sort delay --country 'Germany' --save /etc/pacman.d/mirrorlist'
alias ssh='ssh '
alias ping='ping '
alias aur-update='pacaur -Syu --devel --noconfirm'
alias clear-orphans='pacman -Rns $(pacman -Qqdt)'
alias rmtex='rm *.log; rm *.aux'
alias ghibernate='gnome-screensaver-command --lock && sudo systemctl hibernate'
alias load-vboxdrivers='modprobe -a vboxdrv vboxnetadp vboxnetflt'
alias mount-chroot='sudo mount /mnt/tmpfs; sudo mkdir /mnt/tmpfs/chroot{32,64}'
# british mnemonic finder
alias mnemonic="cat /usr/share/dict/british | sed -r -n '/^.{5,10}$/p' | sed \"s/'//g\" | tr '[:upper:]' '[:lower:]' | shuf -n 1"
#overwrite "default(?)" with my own function
alias cdt='cdtemp'
#Now with extra shibe
alias wow='git status'
alias very='git'
alias much='git'
alias such='git'
#Do not store commmands with leading space
setopt HIST_IGNORE_SPACE
#Do not store ls
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
export PATH=$PATH:/home/fab/bin:/home/fab/.gem/ruby/2.1.0/bin

#vi mode
bindkey -v
export KEYTIMEOUT=1

bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward

#backspace working after returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
