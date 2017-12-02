sudo apt-get install -y vim tmux zsh git samba keepassx
#sudo apt-get install -y nodejs

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
export NVM_DIR="$HOME/.nvm"
. ~/.nvm/nvm.sh

nvm install node

# install oh my zsh, and themes:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# clone personal dotfiles for Linux Mint
git clone https://github.com/rotarydialer/dotfiles.git --branch linux-mint --single-branch ~/ 
cd ~
git init
git remote add origin https://github.com/rotarydialer/dotfiles.git
git fetch
git reset origin/linux-mint
git checkout -t origin/linux-mint


# install fonts, including powerline symbols
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

