#!/usr/bin/env bash 
##################################################
# MAC
##################################################
FLASH_NAME="flashplayer_10_sa_debug.app.zip"
FLASH_URL="http://download.macromedia.com/pub/flashplayer/updaters/10/$FLASH_NAME"
APP_PATH="Flash Player Debugger.app/Contents/MacOS"
DONE_MESSAGE="done - reload your source, then run 'Flash\\ Player'"

function ensure_app_is_flash_player {
  if [ -f "$DEST_PATH/$APP_PATH/Flash Player" ]
    then echo "do nothing"
    else 
        echo "renaming app"
        cd "$DEST_PATH/$APP_PATH"
        cp "Flash Player Debugger" "Flash Player"
  fi
}

# Templated function
function extract_archive_and_mv_player {
    tar xvf $FLASH_NAME
    ensure_app_is_flash_player
}
