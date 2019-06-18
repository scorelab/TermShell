#!/bin/bash

# Color constants
GREEN='\033[0;32m'
NC='\033[0m'
RED='\033[0;31m'

# fetch operating system
OS=$(uname)

if [ "$OS" == "Darwin" ]; then 
    sudo bash macos.sh 
elif [ "$OS" == "Linux" ]; then
    sudo bash ubuntu.sh
elif [ "$OS" == "WindowsNT" ]; then 
    sudo bash windows.sh
else
    printf "❌ ${RED}Termshell is presently not supported on ${OS}${NC}\n\n"
    printf "Please feel free to file a bug and help us improve (https://github.com/scorelab/TermShell/issues)"
fi



