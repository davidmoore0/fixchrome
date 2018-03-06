#!/bin/bash
#OSDETECT#
##OSDETECT:Linux##
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "\n\nYou're on Linux. That's a good thing! We can fix Chrome!\n\n" &&
    ###Kill Chrome###
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "We are going to kill Chrome now." &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "You may be prompted to enter your password. It won't display anything when you type it."
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    ###Get Superuser permissions out of the way so they don't break things later###
    sudo printf "" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    (for PID in `ps acx | grep -i Google\ Chrome | awk '{print $1}'`; do kill $PID; done) &&
    sleep .5 &&
    printf "Chrome seems dead enough..."
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    PID=$( ps -ef | grep -i Google\ Chrome | grep -v grep | (awk '{print $2}' || echo : )) && kill -9 $PID 2>/dev/null && wait $PID 2>/dev/null ;
    #ps -ef | grep -i chrom | grep -v grep | awk '{print $2}' | xargs -r kill -9 &&
    printf "...but let's just make sure it actually died." &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "The Double Tap:" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\"You think it’s dead (technically it was before you shot it), one more makes 100%% sure.\"" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "                                                                 -Zombieland, Rule #2" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    pkill -i -f chrom 2>/dev/null ;
    printf "Chrome is dead to me..." &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    ###Remove Chrome Application###
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "Now we'll delete the Chrome application. This won't hurt a bit." &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n"
    ####TODO: Figure out which version (Stable, Beta, Dev, Chromium) user is using to guide process####
    #/home/$USER/.config/google-chrome/default

##OSDETECT:Mac##
elif [[ "$OSTYPE" == "darwin"* ]]; then
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "You're on Mac OS. That's a good thing. We can fix Chrome!" &&
    ###Kill Chrome###
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "We are going to kill Chrome now." &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "You may be prompted to enter your password. It won't display anything when you type it."
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    ###Get Superuser permissions out of the way so they don't break things later###
    sudo printf "" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    (for PID in `ps acx | grep -i Google\ Chrome | awk '{print $1}'`; do kill $PID; done) &&
    sleep .5 &&
    printf "Chrome seems dead enough..."
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    PID=$( ps -ef | grep -i Google\ Chrome | grep -v grep | (awk '{print $2}' || echo : )) && kill -9 $PID 2>/dev/null && wait $PID 2>/dev/null ;
    #ps -ef | grep -i chrom | grep -v grep | ( awk '{print $2}' || echo : ) | xargs kill -9 2>/dev/null && wait xargs 2>/dev/null ;
    printf "...but let's just make sure it actually died." &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "The Double Tap:" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\"You think it’s dead (technically it was before you shot it), one more makes 100%% sure.\"" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "                                                                 -Zombieland, Rule #2" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    pkill -i -f chrom 2>/dev/null ;
    printf "Chrome is dead to me..." &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    ###Remove Chrome Application###
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "Now we'll delete the Chrome application. This won't hurt a bit." &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    ####TODO: Figure out which version (Stable, Beta, Dev, Chromium) user is using to guide process####
    sudo rm -r /Applications/Google\ Chrome.app/ 2>/dev/null &&
    sleep .5 &&
    printf "\n" &&
    ###Backup Chrome Profile(s) and configuration files###
    printf "And next we'll back up the configuration info from the Profile(s) you had logged into Chrome." &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    ###Switch Username if User did something like "sudo su" before running the script
    if [[ $USER == root ]] ; then USER=$SUDO_USER ; else USER=$USER ; fi &&
    mv /Users/$USER/Library/Application\ Support/Google/Chrome /Users/$USER/Library/Application\ Support/Google/Chrome.bak.`date +"%d-%B-%Y@%H:%M:%S"` &&
    ###Reinstall Chrome###
    printf "Now, let's reinstall Chrome. This won't take long." &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    temp=$TMPDIR$(uuidgen) &&
    mkdir -p $temp/mount &&
    curl https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg > $temp/1.dmg &&
    yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg &&
    cp -r $temp/mount/*.app /Applications &&
    hdiutil detach $temp/mount &&
    rm -r $temp &&
    ###Reopen Chrome###
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    printf "That's pretty much it. Log into your account and select \"Link Data\" on the popup." &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    sleep .5 &&
    printf "\n" &&
    open -a /Applications/Google\ Chrome.app/

##OSDETECT:Windows##
elif [[ "$OSTYPE" == "win32" ]]; then
    echo . && echo . && echo "You're on Winderp. That's a good thing. We can fix Chrome!" && echo . && echo .
    #C:\Users\<username>\AppData\Local\Google\Chrome\User Data\Default

##OSDETECT:Cygwin##
elif [[ "$OSTYPE" == "cygwin" ]]; then
    printf "\n\nYou're on Cygwin. That's not going to work. Sorry mate. Fix Chrome some other way.\n\n"

##OSDETECT:FreeBSD##
elif [[ "$OSTYPE" == "freebsd" ]]; then
    printf "\n\nYou're on FreeBSD. That's not going to work. Sorry mate. Fix Chrome some other way.\n\n"

##OSDETECT:SunOS##
elif [[ "$OSTYPE" == "solaris" ]]; then
    printf "\n\nYou're on SunOS. That's pretty old. Sorry mate. Fix Chrome some other way.\n\n"

##OSDETECT:Unknown##
else
    printf "\n\nError: I don't really know what you're on but your computer says it's $OSTYPE and I can't help there.\n\n"
fi
