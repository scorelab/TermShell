#!/bin/bash

# Color constants
GREEN='\033[0;32m'
NC='\033[0m'
RED='\033[0;31m'

# Dependencies
BREW=$(which brew)
DOCKER=$(which docker)

    # Installing brew
    if [ -z $BREW ]; then 
        echo "Installing brew package manager"
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && echo "✅ Brew" || printf "❌ ${RED}Brew failed to install.${NC}\n Please feel free to file a bug and help us improve ➡ (https://github.com/scorelab/TermShell/issues) \n\n"
    else
        echo "✅ Brew"
    fi 

    # Installing docker
    if [ -z $DOCKER ]; then 
        echo "Installing Docker"
        brew update && brew install bash-completion && brew cask install docker && echo "✅ Docker" || printf "❌ ${RED}Docker failed to install${NC} \n Please feel free to file a bug and help us improve ➡ (https://github.com/scorelab/TermShell/issues)\n\n"
    else
        echo "✅ Docker"
    fi
  



