#!/bin/bash
# colorize.sh
# Colors inspired by <Gentoo>/usr/lib64/portage/bin/isolated-functions.sh
# (Thanks, Daniel Robbins, wherever you got your inspiration from.)

BOLD_GREEN=$(echo -e '\e[32;01m')
BOLD_YELLOW=$(echo -e '\e[33;01m')
BOLD_RED=$(echo -e '\e[31;01m')
BOLD_CYAN=$(echo -e '\e[36;01m')
BOLD_BLUE=$(echo -e '\e[34;01m')
BOLD_PURPLE=$(echo -e '\e[35;01m')
NORMAL=$(echo -e '\e[0m')

sed \
-e "s/\([^ :/]\+\.\(cpp\|cc\|c\|o\|obj\|exe\|dll\|so\|h\|hpp\|java\|a\)\>\)\>/${BOLD_PURPLE}\1${NORMAL}/gI" \
-e "s/\(warning\|warn\|hunk ignored\|can't find file to patch\)\>/${BOLD_YELLOW}\1${NORMAL}/gI" \
-e "s/\(candidates are\)\>/${BOLD_YELLOW}\1${NORMAL}/gI" \
-e "s/\(instantiated from here\)\>/${BOLD_YELLOW}\1${NORMAL}/gI" \
-e "s/\(error\|undefined reference\|undefined\)\>/${BOLD_RED}\1${NORMAL}/gI" \
-e 's/\(success!\+\|success\>\)/'"${BOLD_GREEN}\1${NORMAL}/gI"
