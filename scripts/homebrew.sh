brew update
brew upgrade

TAPS=(
    homebrew/dupes
    homebrew/versions
    caskroom/cask
    caskroom/fonts
    caskroom/versions
)
brew tap ${TAPS[@]}

FORMULAS=(
		rbenv
    ruby-build
    rbenv-gem-rehash
    redis
    postgresql
    heroku
    npm
    wget
    hg
    go
    tree
    imagemagick
    libxml2
    libxslt
    libiconv
		phantomjs
		casperjs
    caskroom/cask/brew-cask
)
brew install ${FORMULAS[@]}

CASKS=(
		dropbox
		skype
		harvest
		mailbox
		textmate
		sequel-pro
		filezilla
		google-chrome
		caffeine
		firefox
		adobe-reader
		sublime-text
		spotify
		sonos
		reveal
		flash
		kdiff3
		evernote
		virtualbox
		vagrant
		arduino
		sketch
		onepassword
		adobe-creative-cloud
)
brew cask install ${CASKS[@]}

brew cleanup
