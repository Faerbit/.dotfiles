# source all other zsh files
if [ -f ~/.zsh_environment ]
then
  source ~/.zsh_environment
fi
#for accounts whithout root
if [ -f ~/.zsh_grml ]
then
  source ~/.zsh_grml
fi
#for untrusted machines
if [ -f ~/.zsh_sensitive ]
then
    source ~/.zsh_sensitive
fi
#for accounts whithout root
if [ -f ~/.zsh_grml ]
then
  source ~/.zsh_grml
fi
source ~/.zsh_functions
export EDITOR=vim
export SYSTEMD_EDITOR=vim

alias sudo='sudo '
alias tasks="ps -u fab"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias sml2p='/home/fab/.Sync-my-L2P/Sync-my-L2P.run'
alias ssh='ssh '
alias ping='ping '
alias aur-update='pacaur -Syu --devel --noconfirm'
alias clear-orphans='sudo pacman -Rns $(pacman -Qqdt)'
alias rmtex='rm *.log; rm *.aux'
alias chibernate='cinnamon-screensaver-command --lock && sudo systemctl hibernate'
alias load-vboxdrivers='modprobe -a vboxdrv vboxnetadp vboxnetflt'
alias mount-chroot='sudo mount /mnt/tmpfs; sudo mkdir /mnt/tmpfs/chroot'
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
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "time to"'
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
alias n='ninja'
alias m='make'
alias cmake='cmake -G Ninja'
alias wlan='sudo netctl-auto list'
alias adb-connect='adb connect 192.168.1.138:5555'
alias sysupgrade='sudo pacmatic -Syu; auracle sync'
alias delete-old-archives='sudo zsh -ci _delete-old-archives'
alias clean-paccache='sudo -s -- paccache -r; paccache -ruk0'
alias krypto="ssh -t azure screen -r"
alias prefix-create-date='exiftool -d %Y%m%d-%H%M%S_%%f.%%le "-filename<CreateDate"'
if test -f "$(which nvim)"
then
    alias v='nvim'
else
    alias v='vim'
fi
source ~/.zsh_functions
export EDITOR=vim
alias emacs='emacs -nw'
alias aiawiki='ssh aia -L 80:ldap2:80'
alias rbtv='livestreamer "https://www.youtube.com/watch?v=mT0TbIqBliw" &'
alias taketv='livestreamer twitch.tv/taketv &'
alias ls='ls --color=auto'
export ASPROOT=~/.asp
export PATH=$PATH:/home/fab/bin:/home/fab/.gem/ruby/2.3.0/bin:~/.local/bin
export LFS=/mnt/lfs

#vi mode
bindkey -v
export KEYTIMEOUT=1
bindkey -M viins 'fd' vi-cmd-mode
bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward

#backspace working after returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

if [ -f /usr/share/doc/pkgfile/command-not-found.zsh ]
then
    source /usr/share/doc/pkgfile/command-not-found.zsh
fi

if [ -f /usr/bin/virtualenvwrapper_lazy.sh ]
then
    # Automatically source virtualenv
    source /usr/bin/virtualenvwrapper_lazy.sh
fi

if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]
then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# displaying current virtual env
grml_theme_add_token virtual-env -f virtual_env_prompt '%F{magenta}' '%f'
zstyle ':prompt:grml:left:setup' items rc virtual-env change-root user at host path vcs percent
