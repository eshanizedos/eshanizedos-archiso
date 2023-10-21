### EXPORT ###
export EDITOR='nano'
export VISUAL='nano'
export HISTCONTROL=ignoreboth:erasedups
export PAGER='most'

#Ibus settings if you need them
#type ibus-setup in terminal to change settings and start the daemon
#delete the hashtags of the next lines and restart
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=dbus
#export QT_IM_MODULE=ibus

PS1='[\u@\h \W]\$ '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

### ALIASES ###

#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -alFh'
alias l='ls'
alias l.="ls -A | egrep '^\.'"
alias listdir="ls -d */ > list"

#pacman
alias sps='sudo pacman -S'
alias spr='sudo pacman -R'
alias sprs='sudo pacman -Rs'
alias sprdd='sudo pacman -Rdd'
alias spqo='sudo pacman -Qo'
alias spsii='sudo pacman -Sii'

# show the list of packages that need this package - depends mpv as example
function_depends()  {
    search=$(echo "$1")
    sudo pacman -Sii $search | grep "Required" | sed -e "s/Required By     : //g" | sed -e "s/  /\n/g"
    }

alias depends='function_depends'

#####
#
#Bash Aliases for Arch Linux
#
#When setting up a new aliases file be sure to check for possible
#naming conflicts with other apps or bash files.
#
#Use gedit or your favorite editor, or alter for ksh, sh, etc.
# ea - alias for editing aliases
alias ea='gedit ~/.bash_aliases; source ~/.bash_aliases && source $HOME/.bash_aliases && echo "aliases sourced  --ok."'

# open bashrc & edit
alias bsh='gedit ~/.bashrc; source ~/.bashrc && source $HOME/.bashrc && echo "bash sourced  --ok."'

# Source bash_profile
alias bpsrc='source ~/.bash_profile'

# system tools ($HOME/bin/)
alias sys='sysinop'

# system info
alias inf='kinfocenter'

# Edit files with Sublime Text
alias sb='subl3 .'

# Atom Editor
alias at='atom'

# Android Studio
alias ast='android-studio'

# Cylon (Arch Maintenance Program)
alias cy='cylon'

#Todo.txt
alias td='todo.sh list'

# Multimedia / Video

# youtube-dl-gui
alias ytg='youtube-dl-gui'

# youtube-dl
alias ytdl='youtube-dl --prefer-ffmpeg'

alias ytdlpl='youtube-dl -t'

# git aliases

# git
alias gt='git'

# git init
alias gi='git init'

# git status
alias gs='git status -sb'

# Clear terminal
alias cl='clear'

# Show history
alias h.='history'

# History
alias hf='history | grep $1'

#
alias pf='ps -e | grep $1'

# Tree view
alias trv='tree'

# disk usage
alias du='du -d 1 -h'

# Show date
alias d='date'

# show calendar
alias cl='cal'

# show users online
alias wh='w'

# who you are logged in as
alias who='whoami'

# Make sure dnstop only shows enp2s0 stats
alias dnstop='dnstop -l 5  enp2s0'

# Make grep pretty 
alias grep='grep --color'

# ls command shortcuts 
alias l.='ls -d .* --color=tty'
alias ll='ls -l --color=tty'
alias ls='ls --color=tty'

# Arch Linux system update - if user is not root, pass all commands via sudo
alias pacup='sudo pacman -Syyu'
alias yup='yaourt -Syyua'
alias add_new='add_something_here'

alias supac='sudo pacman -S'

# superuser
alias super='sudo su'

# reload bashrc
alias reload='. /home/raven/.bashrc'

# reload bash_aliases
alias rba='. /home/raven/.bash_aliases'

# sudo history
alias sh='sudo "$BASH" -c "$(history -p !!)"'

# Make sure vnstat uses enp2s0 by default 
alias vnstat='vnstat -i enp2s0'

# Show kernel information
alias knl='uname -a'

# Clear System Cache
alias cc='sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"'

# Lock Screen Xfce4
alias xflk='xflock4'

# Gnome Search Tool
alias gst='gnome-search-tool &'

# CoreFreq CPU Tool
alias cfq='corefreq-cli'

# edit .vimrc file in gedit
alias vmg='sudo gedit ~/.vimrc'

# Use Shutter to take desktop screenshot
alias screenshot='shutter -f -e -o ''Pictures/screenshots/%y%b%d-%H%M%S.jpg'

# system uptime
alias up='uptime'

# CPU temperature sensors
alias cps='sensors'

# report virtual memory statistics
alias vms='vmstat'

# console-based network traffic monitor
alias vns='vnstat'

# system ip address
alias myip='curl http://ifconfig.me/ip'

# Android Device Monitor
alias andmon='monitor'

# Android File Transfer (MTP)
alias aft='android-file-transfer'

# fortune
alias ft='fortune'

# Zenity Calendar
alias zencal='zenity --calendar'

# GColor2
alias gc2='gcolor2'

# root - run login shell as the target user; a command may also be specified
alias root='sudo -i'

# exit
alias x='exit'

# lsblock
alias lb='lsblk'

# blockid
alias blk='blkid'

# touch
alias tch='touch'

# VTClock
alias vtc='vtclock -1'

# tty-clock
alias tclock='tty-clock -cts -C4'

# pinfo - color manpages, etc
alias info='pinfo'

# Network Tools

# Speedtest
alias spt='speedtest-cli'

# Cylon
alias cy='cylon'

# Pacman Cache (paccache)
alias pacrm='paccache -vr -k1'

# Liquid Prompt
alias lp='source liquidprompt/liquidprompt'

# Pacman List (w/ versions)
alias pacl='pacman -Q >> paclist'

# List packages (all info)
alias lpac='pacman -Qi >> packages'

# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lF --color=auto'
alias la='ls -alF --color=auto'
alias ls='ls -F'

# Make grep more user friendly by highlighting matches
# and exclude grepping through .svn folders.
alias grep='grep --color=auto --exclude-dir=\.svn'

# Shortcut for using the meld tool for svn diffs.
alias svnmeld='svn diff --diff-cmd meld'

# Docker Refresh (docker-refresh)
alias docker-refresh='docker-compose down && docker-compose up'

# Python HTTP Server (SimpleHTTPServer)
alias serve-dir='python3 -m http.server'

# Functions

# Serve a directory on a given port
# $1 = port
# Example: servedir 8080
servedir() {
  # Allow myself to change the port ($1)
  python -m SimpleHTTPServer "$1"
}

# Scrape images with wget
# $1 = url
# Example: scrapeimages https://google.com/
scrapeimages() {
  wget -nd -H -p -A jpg,jpeg,png,gif -e robots=off $1
}

# Remove audio from video
# $1 = source file
# $2 = destination
# Example: removeaudio myvideo.webm myvideo-silent.mp4
removeaudio() {
  ffmpeg -i $1 -vcodec copy -an $2
}

# My Custom Bash Aliases

# NGINX
alias nxrs='sudo systemctl restart nginx.service'
alias nxstat='sudo systemctl status nginx.service'

# Apache (httpd)
alias ars='sudo systemctl restart httpd.service'
alias astat='sudo systemctl status httpd.service'

# PHP-FPM
alias fpm='sudo systemctl restart php-fpm.service'
alias fpmstat='sudo systemctl status php-fpm.service'

# MariaDB (mySQL)
alias mdb='sudo systemctl restart mariadb.service'
alias mdbstat='sudo systemctl status mariadb.service'

# Docker
alias dockr='sudo systemctl restart docker.service'
alias dockrstat='sudo systemctl status docker.service'

# MongoDB
alias mongodb='sudo systemctl restart mongodb.service'
alias mongodbstat='sudo systemctl status mongodb.service'

# Samba (smb)
alias smb='sudo systemctl restart smb.service'
alias smbstat='sudo systemctl status smb.service'

# Samba (nmb)
alias nmb='sudo systemctl restart nmb.service'
alias nmbstat='sudo systemctl status nmb.service'

# SSH (Secure Shell)
alias sshrs='sudo systemctl restart sshd.service'
alias sshrstat='sudo systemctl status sshd.service'

# Privoxy
alias priv='sudo systemctl restart privoxy.service'
alias privstat='sudo systemctl status privoxy.service'

# Squid
alias sqd='sudo systemctl restart squid.service'
alias sqdstat='sudo systemctl status squid.service'

# Polipo
alias poli='sudo systemctl restart polipo.service'
alias polistat='sudo systemctl status polipo.service'

# Teamviewer
alias tview='sudo systemctl restart teamviewerd'
alias tviewstat='sudo systemctl status teamviewerd'

# DNSmasq
alias dnsm='sudo systemctl restart dnsmasq.service'
alias dnsmstat='sudo systemctl status dnsmasq.service'

# DNScrypt
alias dnscp='sudo systemctl restart dnscrypt-proxy.service'
alias dnscpstat='sudo systemctl status dnscrypt-proxy.service'

# Unbound
alias unbdn='sudo systemctl restart unbound.service'
alias undndstat='sudo systemctl status unbound.service'

# TeamViewer
alias tvw='sudo systemctl restart teamviewerd.service'
alias tvwstat='sudo systemctl status teamviewerd.service'

# NetworkManager
alias netman='sudo systemctl restart NetworkManager.service'
alias netmanstat='sudo systemctl status NetworkManager.service'

# Plex
alias plexd='sudo systemctl restart plexmediaserver.service'
alias plexdstat='sudo systemctl status plexmediaserver.service'

# Stop dhcpcd@*
alias stopnetd='sudo systemctl stop dhcpcd@*'

#####

# System Info Bash Aliases

alias ay3="archey"            # Archey
alias sfetch="screenfetch"    # Screenfetch
alias neof="neofetch"         # Neofetch

# Logs

alias httpdlog='sudo tail -f -n 50 /var/log/httpd/error_log'		# HTTPD Error Log (Apache)
alias nginxlog='sudo tail -f -n 50 /var/log/nginx/access.log'		# NGINX Access Log
alias smblog='sudo tail -f -n 50 /var/log/samba/smb.log'			# Samba Log
alias squidalog='sudo tail -f -n 50 /var/log/squid/access.log'		# Squid Access Log
alias squidclog='sudo tail -f -n 50 /var/log/squid/cache.log'		# Squid Cache Log
alias zerolog='sudo tail -f -n 50 /var/log/zeronet/debug.log'		# Zeronet Log

alias paclog='sudo tail -f -n 50 /var/log/pacman.log'				# Pacman Log
alias authlog='sudo tail -f -n 50 /var/log/auth.log'				# Auth Log
alias cronlog='sudo tail -f -n 50 /var/log/crond.log'				# CRON Log
alias daemonlog='sudo tail -f -n 50 /var/log/daemon.log'			# Daemon Log
alias errorslog='sudo tail -f -n 50 /var/log/errors.log'			# Errors Log
alias everylog='sudo tail -f -n 50 /var/log/everything.log'			# Everything Log
alias faillog='sudo tail -f -n 50 /var/log/fail2ban.log'			# Fail2Ban Log
alias kernelog='sudo tail -f -n 50 /var/log/kernel.log'				# Kernel Log
alias lxdmlog='sudo tail -f -n 50 /var/log/lxdm.log'				# LXDM Log
alias messagelog='sudo tail -f -n 50 /var/log/messages.log'			# Messages Log
alias syslog='sudo tail -f -n 50 /var/log/syslog.log'				# Syslog Log
alias userlog='sudo tail -f -n 50 /var/log/user.log'				# User Log
alias xorglog='sudo tail -f -n 50 /var/log/Xorg.0.log'				# Xorg Log

# Yaourt

alias yaconf="yaourt -C"	                          # Fix all configuration files with vimdiff
alias yain="yaourt -S"	                              # Install packages from the repositories
alias yains="yaourt -U"	                              # Install a package from a local file
alias yainsd="yaourt -S --asdeps"	                  # Install packages as dependencies of another package
alias yaloc="yaourt -Qi"	                          # Display information about a package in the local database
alias yalocs="yaourt -Qs"	                          # Search for packages in the local database
alias yalst="yaourt -Qe"	                          # List installed packages including from AUR (tagged as "local")
alias yamir="yaourt -Syy"	                          # Force refresh of all package lists after updating mirrorlist
alias yaorph="yaourt -Qtd"	                          # Remove orphans using yaourt
alias yare="yaourt -R"	                              # Remove packages, keeping its settings and dependencies
alias yarem="yaourt -Rns"	                          # Remove packages, including its settings and unneeded dependencies
alias yarep="yaourt -Si"	                          # Display information about a package in the repositories
alias yareps="yaourt -Ss"	                          # Search for packages in the repositories
alias yaupd="yaourt -Sy && sudo abs && sudo aur"      # Update and refresh local package, ABS and AUR databases
alias yaupd="yaourt -Sy && sudo abs"	              # Update and refresh the local package and ABS databases
alias yaupd="yaourt -Sy && sudo aur"	              # Update and refresh the local package and AUR databases
alias yaupd="yaourt -Sy"	                          # Update and refresh the local package database
alias yaupg="yaourt -Syua"	                          # Sync with repositories before upgrading all packages (from AUR too)
alias yasu="yaourt -Syua --no-confirm"	              # Same as yaupg, but without confirmation
alias upgrade="yaourt -Syu"	                          # Sync with repositories before upgrading packages

# Pacaur

alias pain="pacaur -S"		                          # Install packages from the repositories
alias pains="pacaur -U"		                          # Install a package from a local file
alias painsd="pacaur -S --asdeps"		              # Install packages as dependencies of another package
alias paloc="pacaur -Qi"		                      # Display information about a package in the local database
alias palocs="pacaur -Qs"		              		  # Search for packages in the local database
alias palst="pacaur -Qe"		                      # List installed packages including from AUR (tagged as "local")
alias pamir="pacaur -Syy"		                      # Force refresh of all package lists after updating mirrorlist
alias paorph="pacaur -Qtd"		                      # Remove orphans using pacaur
alias pare="pacaur -R"		                          # Remove packages, keeping its settings and dependencies
alias parem="pacaur -Rns"		                      # Remove packages, including its settings and unneeded dependencies
alias parep="pacaur -Si"		                      # Display information about a package in the repositories
alias pareps="pacaur -Ss"		                      # Search for packages in the repositories
alias paupd="pacaur -Sy && sudo abs && sudo aur"      # Update and refresh local package, ABS and AUR databases
alias paupd="pacaur -Sy && sudo abs"		          # Update and refresh the local package and ABS databases
alias paupd="pacaur -Sy && sudo aur"		          # Update and refresh the local package and AUR databases
alias paupd="pacaur -Sy"		                      # Update and refresh the local package database
alias paupg="pacaur -Syua"		                      # Sync with repositories before upgrading all packages (from AUR too)
alias pasu="pacaur -Syua --no-confirm"		          # Same as paupg, but without confirmation
alias upgrade="pacaur -Syu"		                      # Sync with repositories before upgrading packages

# Pacman

alias pacin="sudo pacman -S"	                            # Install packages from the repositories
alias pacins="sudo pacman -U"	                            # Install a package from a local file
alias pacinsd="sudo pacman -S --asdeps"	                    # Install packages as dependencies of another package
alias pacloc="pacman -Qi"	                                # Display information about a package in the local database
alias paclocs="pacman -Qs"	                                # Search for packages in the local database
alias paclsorphans="sudo pacman -Qdt"	                    # List all orphaned packages
alias pacmir="sudo pacman -Syy"	                            # Force refresh of all package lists after updating mirrorlist
alias pacre="sudo pacman -R"	                            # Remove packages, keeping its settings and dependencies
alias pacrem="sudo pacman -Rns"	                            # Remove packages, including its settings and dependencies
alias pacrep="pacman -Si"	                                # Display information about a package in the repositories
alias pacreps="pacman -Ss"	                                # Search for packages in the repositories
alias pacrmorphans="sudo pacman -Rs $(pacman -Qtdq)"        # Delete all orphaned packages
alias pacupd="sudo pacman -Sy && sudo abs && sudo aur"	    # Update and refresh the local package, ABS and AUR databases
alias pacupd="sudo pacman -Sy && sudo abs"	                # Update and refresh the local package and ABS databases
alias pacupd="sudo pacman -Sy && sudo aur"	                # Update and refresh the local package and AUR databases
alias pacupd="sudo pacman -Sy"	                            # Update and refresh the local package database
alias pacupg="sudo pacman -Syu"	                            # Sync with repositories before upgrading packages
alias upgrade="sudo pacman -Syu"	                        # Sync with repositories before upgrading packages
alias pacfileupg="sudo pacman -Fy"	                        # Download fresh package databases from the server
alias pacfiles="pacman -Fs"	                                # Search package file names for matching strings
alias pacls="pacman -Ql"	                                # List files in a package
alias pacown="pacman -Qo"	                                # Show which package owns a file

# YAY

alias yaconf="yay -Pg"	                                    # Print current configuration
alias yain="yay -S"	                                        # Install packages from the repositories
alias yains="yay -U"	                                    # Install a package from a local file
alias yainsd="yay -S --asdeps"	                            # Install packages as dependencies of another package
alias yaloc="yay -Qi"	                                    # Display information about a package in the local database
alias yalocs="yay -Qs"	                                    # Search for packages in the local database
alias yalst="yay -Qe"	                                    # List installed packages including from AUR (tagged as "local")
alias yamir="yay -Syy"	                                    # Force refresh of all package lists after updating mirrorlist
alias yaorph="yay -Qtd"	                                    # Remove orphans using yaourt
alias yare="yay -R"	                                        # Remove packages, keeping its settings and dependencies
alias yarem="yay -Rns"	                                    # Remove packages, including its settings and unneeded dependencies
alias yarep="yay -Si"	                                    # Display information about a package in the repositories
alias yareps="yay -Ss"	                                    # Search for packages in the repositories
alias yaupg="yay -Syu"	                                    # Sync with repositories before upgrading packages
alias yasu="yay -Syu --no-confirm"	                        # Same as yaupg, but without confirmation

#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases



# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#wayland aliases
alias wsimplescreen="wf-recorder -a"
alias wsimplescreenrecorder="wf-recorder -a -c h264_vaapi -C aac -d /dev/dri/renderD128 --file=recording.mp4"

#btrfs aliases
alias btrfsfs="sudo btrfs filesystem df /"
alias btrfsli="sudo btrfs su li / -t"

#snapper aliases
alias snapcroot="sudo snapper -c root create-config /"
alias snapchome="sudo snapper -c home create-config /home"
alias snapli="sudo snapper list"
alias snapcr="sudo snapper -c root create"
alias snapch="sudo snapper -c home create"

#Leftwm aliases
alias lti="leftwm-theme install"
alias ltu="leftwm-theme uninstall"
alias lta="leftwm-theme apply"
alias ltupd="leftwm-theme update"
alias ltupg="leftwm-theme upgrade"

#eshanized-applications


#git
alias rmgitcache="rm -r ~/.cache/git"
alias grh="git reset --hard"

#pamac
alias pamac-unlock="sudo rm /var/tmp/pamac/dbs/db.lock"

#moving your personal files and folders from /personal to ~
alias personal='cp -Rf /personal/* ~'

#create a file called .bashrc-personal and put all your personal aliases
#in there. They will not be overwritten by skel.

[[ -f ~/.bashrc-personal ]] && . ~/.bashrc-personal

# reporting tools - install when not installed
neofetch