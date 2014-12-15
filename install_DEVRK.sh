#!/bin/bash
var1=$1

if [ $var1 = ubuntu_A5 ];
then
echo 'Installing dependencies of Ubuntu 14.04 and OpenJDK 7'
apt-get install git-core gnupg android-tools-adb flex bison gperf libsdl1.2-dev ccache libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-7-jre openjdk-7-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib -y
sleep 20
echo 'Installing CCACHE in your .bashrc thanks to crewrktablets'
echo "export USE_CCACHE=1" >> ~/.bashrc
echo 'CCACHE directory ~/CCACHE'
mkdir ~/CCACHE
chmod 777 -R ~/CCACHE
echo "export CCACHE_DIR=~/CCACHE" >> ~/.bashrc
ccache -M 30GB ~/CCACHE
echo 'Installing REPO'
mkdir -p ~/bin
chmod 777 ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo 'Installing REPO in your .bashrc'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo 'Downloading prebuilts tools (arm-eabi 4.6) ~/DEV'
mkdir DEV
chmod 777 -R DEV
cd DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 20
chmod 777 -R rk-prebuilts
cd
echo 'Done'
echo 'thanks to E.P.D. Center // http://epdcenter.es'
fi

if [ $var1 = ubuntu_A4 ];
then
echo 'Installing dependencies of Ubuntu 14.04 and OpenJDK 6'
apt-get install git-core gnupg flex bison gperf android-tools-adb libsdl1.2-dev ccache libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib openjdk-6-jre openjdk-6-jdk -y
sleep 20
echo 'Installing CCACHE in your .bashrc thanks to crewrktablets.de'
echo "export USE_CCACHE=1" >> ~/.bashrc
echo 'CCACHE directory ~/CCACHE'
mkdir ~/CCACHE
chmod 777 ~/CCACHE
echo "export CCACHE_DIR=~/CCACHE" >> ~/.bashrc
ccache -M 30GB ~/CCACHE
echo 'Installing REPO'
mkdir -p ~/bin
chmod 777 ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo 'Installing REPO in your .bashrc'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo 'Downloading prebuilts tools (arm-eabi 4.6) in ~/DEV'
mkdir DEV
chmod 777 -R DEV
cd DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 20
chmod 777 -R rk-prebuilts
cd
echo 'Done'
echo 'thanks to E.P.D. Center // http://epdcenter.es'
fi
if [ $var1 = opensuse_A5 ];
then
echo 'Installing dependencies of opensuse 13.x and OpenJDK 7'
sudo zypper install git gnupg ccache lzop flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32bz2-1.0 lib32ncurses5-dev x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z1-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc libreadline6-dev lib32readline-gplv2-dev libncurses5-dev bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev lib32bz2-dev squashfs-tools pngcrush schedtool dpkg-dev java-1_7_0-openjdk-devel java-1_7_0-openjdk 
sleep 20
echo 'Installing CCACHE in your .bashrc thanks to crewrktablets'
echo "export USE_CCACHE=1" >> ~/.bashrc
echo 'CCACHE directory ~/CCACHE'
mkdir ~/CCACHE
chmod 777 -R ~/CCACHE
echo "export CCACHE_DIR=~/CCACHE" >> ~/.bashrc
ccache -M 30GB ~/CCACHE
echo 'Installing REPO'
mkdir -p ~/bin
chmod 777 ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo 'Installing REPO in your .bashrc'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo 'Downloading prebuilts tools (arm-eabi 4.6) ~/DEV'
mkdir DEV
chmod 777 -R DEV
cd DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 20
chmod 777 -R rk-prebuilts
cd
echo 'Done'
echo 'thanks to E.P.D. Center // http://epdcenter.es'
fi
if [ $var1 = opensuse_A4 ];
then
echo 'Installing dependencies of opensuse 13.x and OpenJDK 7'
sudo zypper install git gnupg ccache lzop flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32bz2-1.0 lib32ncurses5-dev x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z1-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc libreadline6-dev lib32readline-gplv2-dev libncurses5-dev bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev lib32bz2-dev squashfs-tools pngcrush schedtool dpkg-dev java-1_6_0-openjdk-devel java-1_6_0-openjdk 
sleep 20
echo 'Installing CCACHE in your .bashrc thanks to crewrktablets'
echo "export USE_CCACHE=1" >> ~/.bashrc
echo 'CCACHE directory ~/CCACHE'
mkdir ~/CCACHE
chmod 777 -R ~/CCACHE
echo "export CCACHE_DIR=~/CCACHE" >> ~/.bashrc
ccache -M 30GB ~/CCACHE
echo 'Installing REPO'
mkdir -p ~/bin
chmod 777 ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo 'Installing REPO in your .bashrc'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo 'Downloading prebuilts tools (arm-eabi 4.6) ~/DEV'
mkdir DEV
chmod 777 -R DEV
cd DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 20
chmod 777 -R rk-prebuilts
cd
echo 'Done'
echo 'thanks to E.P.D. Center // http://epdcenter.es'
fi

if [ $var1 = arch_A5 ];
then
echo 'Installing dependencies of ArchLinux and OpenJDK 7, you needs multilib repository in /etc/pacman.conf and yaourt'
pacman -Syyu  ccache android-tools base-devel jre7-openjdk-headless jre7-openjdk jdk7-openjdk gcc git gnupg flex bison gperf sdl wxgtk squashfs-tools curl ncurses zlib schedtool perl-switch zip unzip libxslt libxml2 lzo lzop python2 gcc-multilib lib32-zlib lib32-ncurses lib32-readline python-virtualenvwrapper
sleep 5
source /usr/bin/virtualenvwrapper.h
mkvirtualenv -p `which python2` python2
workon python2
echo 'Installing CCACHE in your .bashrc thanks to crewrktablets.de'
echo "export USE_CCACHE=1" >> ~/.bashrc
echo 'CCACHE directory ~/CCACHE'
mkdir ~/CCACHE
chmod 777 -R ~/CCACHE
echo "export CCACHE_DIR=~/CCACHE"  >> ~/.bashrc
ccache -M 30GB ~/CCACHE
echo 'Installing REPO'
mkdir -p ~/bin
chmod 777 -R ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo 'Installing REPO in your .bashrc'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo 'Downloading prebuilts tools (arm-eabi 4.6) in ~/DEV'
mkdir DEV
chmod 777 -R DEV
cd DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 20
chmod 777 -R rk-prebuilts
cd
echo 'Done'
echo 'thanks to E.P.D. Center // http://epdcenter.es'
fi

if [ $var1 = arch_A4 ];
then
echo 'Installing dependencies of ArchLinux and OpenJDK 7, you needs multilib repository in /etc/pacman.conf and yaourt'
pacman -Syyu ccache  android-tools base-devel gcc git gnupg flex bison gperf sdl wxgtk squashfs-tools curl ncurses zlib schedtool perl-switch zip unzip libxslt libxml2 lzo lzop python2 gcc-multilib lib32-zlib lib32-ncurses lib32-readline python-virtualenvwrapper
sleep 5
yaourt -S jre6 jdk6
sleep 5
source /usr/bin/virtualenvwrapper.h
mkvirtualenv -p `which python2` python2
workon python2
sleep 10
echo 'Installing CCACHE in your .bashrc thanks to crewrktablets.de'
echo "export USE_CCACHE=1" >> ~/.bashrc
echo 'CCACHE directory ~/CCACHE'
mkdir ~/CCACHE
chmod 777 -R ~/CCACHE
echo "export CCACHE_DIR=~/CCACHE" >> ~/.bashrc
ccache -M 30GB ~/CCACHE
echo 'Installing REPO'
mkdir -p ~/bin
chmod 777 ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo 'Installing REPO in your .bashrc'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo 'Downloading prebuilts tools (arm-eabi 4.6) in ~/DEV'
mkdir DEV
chmod 777 DEV
cd DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 20
chmod 777 -R rk-prebuilts
cd
echo 'Done'
echo 'thanks to E.P.D. Center // http://epdcenter.es'
fi

if [ $var1 = fedora_A5 ];
then
echo 'Installing dependencies of Fedora and OpenJDK7'
yum install glibc.i686 ccache glibc-devel.i686 libstdc++.i686 zlib-devel.i686 \ ncurses-devel.i686 libX11-devel.i686 libXrender.i686 libXrandr.i686 gcc gcc-c++ gperf \ flex bison glibc-devel.{x86_64,i686} zlib-devel.{x86_64,i686} ncurses-devel.i686 libsx-devel \ readline-devel.i686 perl-Switch git gpg java-1.7.0-openjdk-devel.x86_64 schedtool
sleep 20
echo "export EXPERIMENTAL_USE_JAVA7=true" >> ~/.bashrc
echo 'Installing CCACHE in your .bashrc thanks to crewrktablets.de'
echo "export USE_CCACHE=1" >> ~/.bashrc
echo 'CCACHE directory ~/CCACHE'
mkdir ~/CCACHE
chmod 777 -R ~/CCACHE
echo "export CCACHE_DIR=~/CCACHE" >> ~/.bashrc
ccache -M 30GB ~/CCACHE
echo 'Installing REPO'
mkdir -p ~/bin
chmod 777 ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
sleep 3
echo 'Installing REPO in your .bashrc'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo 'Downloading prebuilts tools (arm-eabi 4.6) in ~/DEV'
mkdir DEV
chmod 777 -R DEV
cd DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 20
chmod 777 -R rk-prebuilts
cd
echo 'Done'
echo 'thanks to E.P.D. Center // http://epdcenter.es'
fi
if [ $var1 = fedora_A4 ];
then
echo 'Installing dependencies of Fedora and OpenJDK6'
yum install glibc.i686 ccache glibc-devel.i686 libstdc++.i686 android-tools zlib-devel.i686 \ ncurses-devel.i686 libX11-devel.i686 libXrender.i686 libXrandr.i686 gcc gcc-c++ gperf \ flex bison glibc-devel.{x86_64,i686} zlib-devel.{x86_64,i686} ncurses-devel.i686 libsx-devel \ readline-devel.i686 perl-Switch git gpg java-1.7.0-openjdk-devel.x86_64 schedtool java-1.6.0-openjdk-devel
sleep 20
echo 'Installing CCACHE in your .bashrc thanks to crewrktablets.de'
echo "export USE_CCACHE=1" >> ~/.bashrc
echo 'CCACHE directory ~/CCACHE'
mkdir ~/CCACHE
chmod 777 -R ~/CCACHE
echo "export CCACHE_DIR=~/CCACHE" >> ~/.bashrc
ccache -M 30GB ~/CCACHE
echo 'Installing REPO'
mkdir -p ~/bin
chmod 777 ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
sleep 3
echo 'Installing REPO in your .bashrc'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo 'Downloading prebuilts tools (arm-eabi 4.6) in ~/DEV'
mkdir DEV
chmod 777 -R DEV
cd DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
chmod 777 -R rk-prebuilts
sleep 20
cd
echo 'Done'
echo 'thanks to E.P.D. Center // http://epdcenter.es'
fi
if [ $var1 = rockchip ];
then
echo 'Installing rockchip flash tool in ~/DEV || Thanks to crewrktablets // http://crewrktablets.de'
cd DEV
wget https://epdcenter.es/images/FTP/rockchip/Linux_Upgrade_Tool_v1.21.zip
sleep 5
chmod 644 Linux_Upgrade_Tool_v1.21.zip
unzip Linux_Upgrade_Tool_v1.21.zip
chmod 777 -R Linux_Upgrade_Tool_v1.21
cd
sleep 20
echo 'Fixing ADB Rockchip'
touch /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="2207", MODE="0666", GROUP="plugdev"' >> /etc/udev/rules.d/51-android.rules
udevadm control --reload-rules
sleep 2
mkdir .android
touch ~/.android/adb_usb.ini
echo '0x2207' >> .android/adb_usb.ini
chmod 777 -R ~/.android
sleep 5
echo 'Done'
echo 'thanks to E.P.D. Center // http://epdcenter.es'
sleep 2
fi
