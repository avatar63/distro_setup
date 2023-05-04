#/bin/sh

packagesNeeded='snapd'
if [ -x "$(command -v apk)" ];       then sudo apk add --no-cache $packagesNeeded
elif [ -x "$(command -v apt-get)" ]; then sudo apt-get install $packagesNeeded
elif [ -x "$(command -v dnf)" ];     then sudo dnf install $packagesNeeded
elif [ -x "$(command -v zypper)" ];  then sudo zypper install $packagesNeeded
else echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $packagesNeeded">&2; fi


declare -a packages=

packages[0]="todoist"
packages[1]="krdc"
packages[3]="youtube-music-desktop-app"
packages[4]="spotify"
packages[5]="code --classic"
packages[6]="android-studio --classic"
packages[7]="netbeans --classic"

for i in "${packages[@]}"
do
	sudo snap install $i
done




