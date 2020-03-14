# Install packages I use most often
# This command is useful for searching through your apt logs 
# find packages you manually installed:
# zgrep -h 'Commandline: .*install' /var/log/apt/history.log /var/log/apt/history.log.*| sed -e 's/Commandline: //' -e '/apt/!d'


if [ ! -e ~/.ssh/alan.gibson ] && [ ! -e ~/.ssh/alan.gibson.pub ]; then
  echo "install SSH keys to proceed" 2>&
  exit 1
fi

# vim, of course
sudo apt-get install vim
# FZF fuzzy finder
sudo apt-get install fzf
# transmission torrents
sudo apt-get install transmission
# VLC video player
sudo apt-get install vlc
# tmux terminal multiplexer
sudo apt-get install tmux
# strace, trace system calls
sudo apt-get install strace
# stow, for managing my dotfiles
sudo apt-get install stow
# git, a fan favourite
sudo apt-get install git
# rbenv ruby version manager
sudo apt-get install rbenv
# ruby full, required
sudo apt-get install ruby-full
# gimp 
sudo apt-get install gimp
# ctags for vim
sudo apt-get install ctags
# ripgrep for searching
sudo apt-get install ripgrep
# htop for better process viewing
sudo apt-get install htop
# gnome-tweak-tool for tweaking settings
sudo apt-get install gnome-tweak-tool
# zsh
sudo apt-get install zsh
# iotop for inspecting I/O
sudo apt-get install iotop
# docker related stuff
sudo apt-get install docker docker-compose docker-ce
# jq for JSON
sudo apt-get install jq
# solaar for MX Master 2 mouse
sudo apt-get install solaar
# OpenVPN for privacy
sudo apt-get install openvpn
# tree for viewing file systems
sudo apt-get install tree

# Download my repos
git clone git@github.com:skipcloud/dotfiles ~/dotfiles && $(cd ~/dotfiles && make install)
git clone git@github.com:skipcloud/secrets ~/secrets && $(cd ~/secrets && make)
git clone git@github.com:skipcloud/git-open ~/code/personal/git-open && $(cd ~/code/git-open && make)
git clone git@github.com:skipcloud/note ~/code/personal/note && $(cd ~/code/personal/note && make all)
git clone git@github.com:skipcloud/bin ~/bin

# Other software that needs manually installed
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
