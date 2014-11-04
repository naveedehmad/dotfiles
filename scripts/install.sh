echo "Changing shell…"
chsh -s /bin/zsh

echo "Linking files..."
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gemrc ~/.gemrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.gvimrc ~/.gvimrc      
ln -s ~/.dotfiles/.irbrc ~/.irbrc  
ln -s ~/.dotfiles/.zsh ~/.zsh    
ln -s ~/.dotfiles/.zshrc ~/.zshrc

echo "Cloning Sublime Text configuration…"
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3
git clone https://github.com/soffes/sublime.git ~/Library/Application\ Support/Sublime\ Text\ 3

echo "Hiding files…"
SetFile -a "V" ~/Readme.markdown ~/LICENSE ~/Scripts

echo "Excluding everything from git…"
echo '*' >> ~/.git/info/exclude

echo "Installing Homebrew…"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
~/.dotfiles/scripts/homebrew.sh

echo "Installing Ruby…"
rbenv install 2.1.3
rbenv global 2.1.3

echo "Done."
