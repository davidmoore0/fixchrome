#!/bin/bash
#OSDETECT#
##OSDETECT:Linux##
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	printf "\n\nYou're on Linux. That's a good thing! We can fix Chrome\n\n!" &&
  sleep .5 &&
  ###Kill Chrome###
  printf "\nWe are going to kill Chrome now. Hopefully that's okay.\n\n" &&
  (for PID in `ps acx | grep -i Google\ Chrome | awk '{print $1}'`; do kill $PID; done) &&
  sleep .5 &&
  ps -ef | grep -i chrom | grep -v grep | awk '{print $2}' | xargs -r kill -9 &&
  printf "\nLet's just make sure Chrome's actually dead. Otherwise, this won't work.\n\n" &&
  sleep .5 &&
  printf "\nThe Double Tap:\n" &&
  sleep .5 &&
  printf "\nYou think it’s dead (technically it was before you shot it), one more makes 100%% sure.\n" &&
  sleep .5 &&
  printf "\n                                                                 -Zombieland, Rule #2\n\n" &&
  sleep .5 &&
  pkill -i -f chrom &&
  sleep .5 &&
##OSDETECT:Mac##
elif [[ "$OSTYPE" == "darwin"* ]]; then
	printf "\n\nYou're on Mac OS. That's a good thing. We can fix Chrome\n\n!" &&
  sleep .5 &&
  ###Kill Chrome###
  printf "\nWe are going to kill Chrome now. Hopefully that's okay.\n\n" &&
  (for PID in `ps acx | grep -i Google\ Chrome | awk '{print $1}'`; do kill $PID; done) &&
  sleep .5 &&
  ps -ef | grep -i chrom | grep -v grep | awk '{print $2}' | xargs -r kill -9 &&
  printf "\nLet's just make sure Chrome's actually dead. Otherwise, this won't work.\n\n" &&
  sleep .5 &&
  printf "\nThe Double Tap:\n" &&
  sleep .5 &&
  printf "\nYou think it’s dead (technically it was before you shot it), one more makes 100%% sure.\n" &&
  sleep .5 &&
  printf "\n                                                                 -Zombieland, Rule #2\n\n" &&
  sleep .5 &&
  pkill -i -f chrom &&
  sleep .5 &&
  ###Remove Chrome Application###
  printf "\nNow we'll delete the Chrome application. This won't hurt a bit.\n\n" &&
  ####TODO: Figure out which version (Stable, Beta, Dev, Chromium) user is using to guide process####
  sudo rm -r /Applications/Google\ Chrome.app/ &&
  sleep .5 &&
  ###Backup Chrome Profile(s) and configuration files###
  printf "\nAnd next we'll back the configuration information up from the Profile(s) you had logged into Chrome.\n\n" &&
  mv ~/Library/Application\ Support/Google/Chrome ~/Library/Application\ Support/Google/Chrome.bak.`date +"%Y-%m_%d-%H:%M:%S:%3N"` &&
  sleep .5 &&
  ###Reinstall Chrome###
  printf "\nNow, let's reinstall Chrome. This won't take long.\n\n" &&
  temp=$TMPDIR$(uuidgen) &&
  mkdir -p $temp/mount &&
  curl https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg > $temp/1.dmg &&
  yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg &&
  cp -r $temp/mount/*.app /Applications &&
  hdiutil detach $temp/mount &&
  rm -r $temp &&
  ###Reopen Chrome###
  printf "\nThat's pretty much it. Log into your account and select "Link Data" on the popup and all will be well.\n\n" &&
  open -a /Applications/Google\ Chrome.app/
##OSDETECT:Windows##
elif [[ "$OSTYPE" == "win32" ]]; then
	echo . && echo . && echo "You're on Winderp. That's a good thing. We can fix Chrome!" && echo . && echo .
##OSDETECT:Cygwin##
elif [[ "$OSTYPE" == "cygwin" ]]; then
  printf "\n\nYou're on Cygwin. That's not going to work. Sorry mate. Fix Chrome some other way\n\n."
##OSDETECT:FreeBSD##
elif [[ "$OSTYPE" == "freebsd" ]]; then
	printf "\n\nYou're on FreeBSD. That's not going to work. Sorry mate. Fix Chrome some other way\n\n."
##OSDETECT:SunOS##
elif [[ "$OSTYPE" == "solaris" ]]; then
	printf "\n\nYou're on SunOS. That's pretty old. Sorry mate. Fix Chrome some other way\n\n."
##OSDETECT:Unknown##
else
	printf "\n\nError: I don't really know what you're on but your computer says it's $OSTYPE and I can't help there\n\n."
fi
