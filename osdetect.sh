#!/bin/sh
#<<COMMENT
case "$OSTYPE" in
	solaris*) 
		echo "You're on SunOS. That's pretty old. Sorry mate. Fix Chrome some other way."
		;;
	darwin*)
		echo "You're on Mac OS. That's a good thing. We can fix Chrome!" 
		;; 
	linux*)
		echo "You're on Linux. That's a good thing! We can fix Chrome!" 
		;;
	bsd*) 
		echo "You're on FreeBSD. That's not going to work. Sorry mate. Fix Chrome some other way."
		;;
	msys*)
		echo "You're on Winderp. That's a good thing. We can fix Chrome!"
		;;
	*)
		echo "Error: I don't really know what you're on but your computer says it's $OSTYPE and I can't help there."
		;;
esac
<<COMMENT

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo ${machine}
#COMMENT

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  # ...
  echo "linux-gnu"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # ...
  echo "darwin"
elif [[ "$OSTYPE" == "cygwin" ]]; then
  # ...
  echo "cygwin"
elif [[ "$OSTYPE" == "win32" ]]; then
  # ...
  echo "win32" 
elif [[ "$OSTYPE" == "freebsd" ]]; then
  # ...
  echo "freebsd"
else
  # Unknown.
  echo "Wow, that's a weird one.\n"
fi
COMMENT