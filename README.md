# Running the scripts
##Adding flash player:
    bash -s < <(curl -s https://raw.github.com/edeustace/flashplayer-on-path/master/run )
    # Its creating a folder ~/.flash_player_path/flash_player and adding the App to your path in ~/.bash_profile and ~/.zshrc
##Removing flash player:
    bash -s remove < <(curl -s https://raw.github.com/edeustace/flashplayer-on-path/master/run )
    # its removing the references to flash player from ~/.bash_profile and ~/.zshrc and deleting the folder

