#!/usr/bin/fish

if [ $argv[1] = "push" ] 
	cd ~/dev/moredots
	git fetch
	git pull
	rsync -avz ~/.tmux.conf ~/.config/kitty ~/.config/fish ~/dev/moredots ;
	git add -u
	git commit -m (hostname)": more dots!"
	git push
	echo "[+] dots pushed!"

else if [ $argv[1] = "pull" ]
	cd ~/dev/moredots
	git fetch
	git pull
	rsync -avz ~/dev/moredots/.tmux.conf ~/.tmux.conf ;
	rsync -avz ~/dev/moredots/fish ~/.config/fish ;
	rsync -avz ~/dev/moredots/kitty ~/.config/kitty ;
	echo "[+] dots pulled!"
else
	echo "Would you like to 'push' or 'pull' dots?"
end
