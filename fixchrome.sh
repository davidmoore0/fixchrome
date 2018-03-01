



###Quit Chrome:###
(for X in `ps acx | grep -i Google\ Chrome | awk {'print $1'}`; do kill $X; done)

###Purge most Chrome settings###

###Remove Chrome application (this is key to this process)###

sudo rm -r /Applications/Google\ Chrome.app/
#TODO: Figure out which version (Stable, Beta, Dev, Chromium) user is using to guide process

##Remove or backup Chrome Profile and major information (this is key to this process)
#rm -r ~/Library/Application\ Support/Google/Chrome/
mv ~/Library/Application\ Support/Google/Chrome ~/Library/Application\ Support/Google/Chrome.bak
#TODO: Have it check to see if backup already exists, if one does, create a numbered backup (e.g. .bak1, .bak2, etc)

###Reinstall Chrome###
temp=$TMPDIR$(uuidgen)
mkdir -p $temp/mount
curl https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg > $temp/1.dmg
yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg
cp -r $temp/mount/*.app /Applications
hdiutil detach $temp/mount
rm -r $temp

###Open Chrome###
open -a /Applications/Google\ Chrome.app/