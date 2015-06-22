#!/bin/sh

# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37

export COLOR_NC='\033[0m' # No Color

export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_LIGHT_GRAY='\033[0;37m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_BRIGHT_GREEN='\033[38;05;46m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_LIGHT_RED='\033[1;31m'

export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_BROWN='\033[0;33m'
export COLOR_CYAN='\033[0;36m'
export COLOR_GRAY='\033[1;30m'
export COLOR_GREEN='\033[0;32m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_RED='\033[0;31m'
export COLOR_WHITE='\033[1;37m'
export COLOR_YELLOW='\033[1;33m'

export COLOR_BG_NC='\033[49m'

export COLOR_BG_LIGHT_GRAY='\033[47m'

export COLOR_BG_BLUE='\033[44m'
export COLOR_BG_CYAN='\033[46m'
export COLOR_BG_GREEN='\033[42m'
export COLOR_BG_PURPLE='\033[45m'
export COLOR_BG_RED='\033[41m'
export COLOR_BG_YELLOW='\033[43m'

