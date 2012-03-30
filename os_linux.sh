#!/usr/bin/env bash 
##################################################
# LINUX
##################################################
FLASH_NAME="flash_player_10_linux_dev.tar.gz"
FLASH_URL="http://download.macromedia.com/pub/flashplayer/updaters/10/$FLASH_NAME"
APP_PATH=""
DONE_MESSAGE="done - reload your source file then run 'flashplayer'"


#TODO: - apt-get install ia32-libs so flash player can run
# Templated function
function extract_archive_and_mv_player {

    tar xvf $FLASH_NAME
    STRIPPED=${FLASH_NAME//.tar.gz/}
    tar xvf "$STRIPPED/standalone/debugger/flashplayer.tar.gz"
    #TODO: mv - stat error happening here?
    mv -v $STRIPPED/standalone/debugger/flashplayer flashplayer
    chmod +x flashplayer

    if [[ $MACH = "x86_64" ]]; then
        sudo apt-get install ia32-libs
    fi
    #rm -fr $STRIPPED
    #rm $FLASH_NAME
}

