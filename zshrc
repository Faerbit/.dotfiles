source /usr/share/zsh/scripts/zgen/zgen.zsh

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    #zgen oh-my-zsh

    # plugins
    #zgen oh-my-zsh plugins/gitfast
    #zgen oh-my-zsh plugins/sudo
    #zgen oh-my-zsh plugins/command-not-found
    #zgen load zsh-users/zsh-syntax-highlighting

    ## completions
    #zgen load zsh-users/zsh-completions src

    # theme
    zgen oh-my-zsh themes/juanghurtado

    # save all to init script
    zgen save
fi

alias sudo='sudo '
alias tasks="ps -u fab"
alias update-grub="grub-mkconfig -o /boot/grub/grub.cfg"
alias sml2p='/home/fab/.Sync-my-L2P/Sync-my-L2P.run'
alias update-mirrors='sh -c "reflector -p http -l 50 --sort rate | tee /etc/pacman.d/mirrorlist"'
alias ssh='ssh '
alias ping='ping '
alias aur-update='pacaur -Syu --devel --noconfirm'
alias clear-orphans='pacman -Rns $(pacman -Qqdt)'
alias rmtex='rm *.log; rm *.aux'
alias chibernate='cinnamon-screensaver-command --lock && sudo systemctl hibernate'
alias load-vboxdrivers='modprobe -a vboxdrv vboxnetadp vboxnetflt'
alias mount-chroot='sudo mount /mnt/tmpfs; sudo mkdir /mnt/tmpfs/chroot{32,64}'
alias open='xdg-open'
# british mnemonic finder
alias mnemonic="cat /usr/share/dict/british | sed -r -n '/^.{5,10}$/p' | sed \"s/'//g\" | tr '[:upper:]' '[:lower:]' | shuf -n 1"
#overwrite "default(?)" with my own function
alias cdt='cdtemp'
alias gst='git status'
alias gdf='git diff'
alias gdfs='git diff --staged'
alias gad='git add'
alias gcm='git commit'
alias resource='source ~/.zshrc'
alias ls='ls --color=auto'
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
export ASPROOT=~/.asp

#vi mode
bindkey -v
export KEYTIMEOUT=1

bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward

#backspace working after returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
