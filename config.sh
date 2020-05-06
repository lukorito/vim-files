which -s brew
if [[ $? != 0 ]] ; then
    echo "homebrew not installed"
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" 
else
	# Install brew packages
   	brew install git
	brew install iterm2
	 
	#casks
	brew cask install google-chrome
	brew cask install slack
	brew cask install spotify
	brew cask install visual-studio-code
	brew cask install iterm2
	brew cask install atom
	brew cask install opera
	brew cask install whatsapp
	brew cask install firefox
	brew cask install zoomus
	brew cask install postgres
	brew cask install transmission 
	brew cask install postman
	brew cask install docker
	brew cask install notion
	brew cask install anydesk
	brew cask install boostnote
	echo "done installing"	
	brew update	
fi
