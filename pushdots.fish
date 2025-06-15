#!/usr/bin/fish

cd ~/dev/moredots
git pull
rsync -avz ~/.tmux.conf ~/.config/kitty ~/.config/fish ~/dev/moredots ; rsync -avz ~/.config/nvim/init.lua ~/.config/nvim/lua ~/dev/moredots/nvim/ 
git add -u
git commit -m "more dots!"
git push
