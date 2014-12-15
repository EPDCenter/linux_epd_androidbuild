#!/bin/bash
echo -e '\033[1;34mEEEEEEEEEEEEEEEEEEEEEEEE\e[0m'
echo -e '\033[1;34mEEEEEEEEEEEEEEEEEEEEEEEE\e[0m'
echo -e '\033[1;34mEEE\e[0m\033[34m##################\e[0m\033[1;34mEEE\e[0m'
echo -e '\033[1;34mEEE\e[0m\033[34m##################\e[0m\033[1;34mEEE\e[0m'
echo -e '\033[1;34mEEE\e[0m\033[34m#####\e[0m\033[1;34mEEEEEEEEEEEEEEEE\e[0m'
echo -e '\033[1;34mEEE\e[0m\033[34m###############\e[0m\033[1;34mEEEEEE\e[0m'
echo -e '\033[1;34mEEE\e[0m\033[34m###############\e[0m\033[1;34mEEEEEE\e[0m'
echo -e '\033[1;34mEEE\e[0m\033[34m#####\e[0m\033[1;34mEEEEEEEEEEEEEEEE\e[0m'
echo -e '\033[1;34mEEE\e[0m\033[34m##################\e[0m\033[1;34mEEE\e[0m'
echo -e '\033[1;34mEEE\e[0m\033[34m##################\e[0m\033[1;34mEEE\e[0m'
echo -e '\033[1;34mEEEEEEEEEEEEEEEEEEEEEEEE\e[0m'
echo -e '\033[1;34mEEEEEEEEEEEEEEEEEEEEEEEE\e[0m'
echo '                         '
echo -e '\033[1;33mE.P.D CENTER // http://epdcenter.es\e[0m'

var1=$1

if [ $var1 = ubuntu_A5 ];
then
echo -e '\033[1;31mChecking and removing previous installations\e[0m'
sed -e 's/export USE_CCACHE=1//' ~/.bashrc >> ~/.bashrc1
sed -e 's/umask 022//' ~/.bashrc1 >> ~/.bashrc2
mv ~/.bashrc2 ~/.bashrc
rm ~/.bashrc1
sleep 5
echo -e '\033[1;31mInstalling dependencies of Ubuntu 14.04 and OpenJDK 7\e[0m'
sudo apt-get install git-core gnupg android-tools-adb flex bison gperf libsdl1.2-dev ccache libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-7-jre openjdk-7-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib -y
sleep 5
echo -e '\033[1;31mInstalling CCACHE in your .bashrc thanks to crewrktablets\e[0m'
echo "export USE_CCACHE=1" >> ~/.bashrc
ccache -M 30GB ~/.ccache
echo -e '\033[1;31mInstalling REPO\e[0m'
mkdir -p ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo -e '\033[1;31mInstalling REPO in your .bashrc\e[0m'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo -e '\033[1;31mDownloading prebuilts tools (arm-eabi 4.6) in ~/DEV\e[0m'
mkdir ~/DEV
cd ~/DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 5
cd
echo -e '\033[1;33mDone\e[0m'
echo -e '\033[1;33mThanks to E.P.D. Center // http://epdcenter.es\e[0m'
fi
if [ $var1 = ubuntu_A4 ];
then
echo -e '\033[1;31mChecking and removing previous installations\e[0m'
sed -e 's/export USE_CCACHE=1//' ~/.bashrc >> ~/.bashrc1
sed -e 's/umask 022//' ~/.bashrc1 >> ~/.bashrc2
mv ~/.bashrc2 ~/.bashrc
rm ~/.bashrc1
sleep 5
echo -e '\033[1;31mInstalling dependencies of Ubuntu 14.04 and OpenJDK 6\e[0m'
sudo apt-get install git-core gnupg flex bison gperf android-tools-adb libsdl1.2-dev ccache libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib openjdk-6-jre openjdk-6-jdk -y
sleep 5
echo -e '\033[1;31mInstalling CCACHE in your .bashrc thanks to crewrktablets.de:\e[0m'
echo "export USE_CCACHE=1" >> ~/.bashrc
ccache -M 30GB ~/.ccache
echo -e '\033[1;31mInstalling REPO\e[0m'
mkdir -p ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo -e '\033[1;31mInstalling REPO in your .bashrc:\e[0m'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo -e '\033[1;31mDownloading prebuilts tools (arm-eabi 4.6) in ~/DEV:\e[0m'
mkdir ~/DEV
cd ~/DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 5
cd
echo -e '\033[1;33mDone\e[0m'
echo -e '\033[1;33mThanks to E.P.D. Center // http://epdcenter.es\e[0m'
fi
if [ $var1 = opensuse_A5 ];
then
echo -e '\033[1;31mChecking and removing previous installations\e[0m'
sed -e 's/export USE_CCACHE=1//' ~/.bashrc >> ~/.bashrc1
sed -e 's/umask 022//' ~/.bashrc1 >> ~/.bashrc2
mv ~/.bashrc2 ~/.bashrc
rm ~/.bashrc1
sleep 5
echo -e '\033[1;31mInstalling dependencies of opensuse 13.x and OpenJDK 7:\e[0m'
sudo zypper install git gnupg ccache lzop flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32bz2-1.0 lib32ncurses5-dev x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z1-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc libreadline6-dev lib32readline-gplv2-dev libncurses5-dev bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev lib32bz2-dev squashfs-tools pngcrush schedtool dpkg-dev java-1_7_0-openjdk-devel java-1_7_0-openjdk 
sleep 5
echo -e '\033[1;31mInstalling CCACHE in your .bashrc thanks to crewrktablets:\e[0m'
echo "export USE_CCACHE=1" >> ~/.bashrc
ccache -M 30GB ~/.ccache
echo -e '\033[1;31mInstalling REPO\e[0m:'
mkdir -p ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo -e '\033[1;31mInstalling REPO in your .bashrc:\e[0m'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo -e '\033[1;31mDownloading prebuilts tools (arm-eabi 4.6) in ~/DEV:\e[0m'
mkdir ~/DEV
cd ~/DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 5
cd
echo -e '\033[1;33mDone\e[0m:'
echo -e '\033[1;33mThanks to E.P.D. Center // http://epdcenter.es\e[0m:'
fi
if [ $var1 = opensuse_A4 ];
then
echo -e '\033[1;31mChecking and removing previous installations\e[0m'
sed -e 's/export USE_CCACHE=1//' ~/.bashrc >> ~/.bashrc1
sed -e 's/umask 022//' ~/.bashrc1 >> ~/.bashrc2
mv ~/.bashrc2 ~/.bashrc
rm ~/.bashrc1
sleep 5
echo -e '\033[1;31mInstalling dependencies of opensuse 13.x and OpenJDK 7:\e[0m'
sudo zypper install git gnupg ccache lzop flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32bz2-1.0 lib32ncurses5-dev x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z1-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc libreadline6-dev lib32readline-gplv2-dev libncurses5-dev bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev lib32bz2-dev squashfs-tools pngcrush schedtool dpkg-dev java-1_6_0-openjdk-devel java-1_6_0-openjdk 
sleep 5
echo -e '\033[1;31mInstalling CCACHE in your .bashrc thanks to crewrktablets:\e[0m'
echo "export USE_CCACHE=1" >> ~/.bashrc
ccache -M 30GB ~/CCACHE
echo -e '\033[1;31mInstalling REPO:\e[0m'
mkdir -p ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo -e '\033[1;31mInstalling REPO in your .bashrc:\e[0m'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo -e '\033[1;31mDownloading prebuilts tools (arm-eabi 4.6) in ~/DEV:\e[0m'
mkdir ~/DEV
cd DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 5
cd
echo -e '\033[1;33mDone\e[0m'
echo -e '\033[1;33mThanks to E.P.D. Center // http://epdcenter.es\e[0m'
fi

if [ $var1 = arch_A5 ];
then
echo -e '\033[1;31mChecking and removing previous installations\e[0m'
sed -e 's/export USE_CCACHE=1//' ~/.bashrc >> ~/.bashrc1
sed -e 's/umask 022//' ~/.bashrc1 >> ~/.bashrc2
mv ~/.bashrc2 ~/.bashrc
rm ~/.bashrc1
sleep 5
echo -e '\033[1;31mInstalling dependencies of ArchLinux and OpenJDK 7, you needs multilib repository in /etc/pacman.conf and yaourt:\e[0m'
sudo pacman -Syyu  ccache android-tools base-devel jre7-openjdk-headless jre7-openjdk jdk7-openjdk gcc git gnupg flex bison gperf sdl wxgtk squashfs-tools curl ncurses zlib schedtool perl-switch zip unzip libxslt libxml2 lzo lzop python2 gcc-multilib lib32-zlib lib32-ncurses lib32-readline python-virtualenvwrapper
sleep 5
sudo source /usr/bin/virtualenvwrapper.h
sudo mkvirtualenv -p `which python2` python2
sudo workon python2
echo -e '\033[1;31mInstalling CCACHE in your .bashrc thanks to crewrktablets.de:\e[0m'
echo "export USE_CCACHE=1" >> ~/.bashrc
ccache -M 30GB ~/.ccache
echo -e '\033[1;31mInstalling REPO:\e[0m'
mkdir -p ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo -e '\033[1;31mInstalling REPO in your .bashrc:\e[0m'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo -e '\033[1;31mDownloading prebuilts tools (arm-eabi 4.6) in ~/DEV:\e[0m'
mkdir ~/DEV
cd ~/DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 5
cd
echo -e '\033[1;33mDone\e[0m'
echo -e '\033[1;33mThanks to E.P.D. Center // http://epdcenter.es\e[0m'
fi

if [ $var1 = arch_A4 ];
then
echo -e '\033[1;31mChecking and removing previous installations\e[0m'
sed -e 's/export USE_CCACHE=1//' ~/.bashrc >> ~/.bashrc1
sed -e 's/umask 022//' ~/.bashrc1 >> ~/.bashrc2
mv ~/.bashrc2 ~/.bashrc
rm ~/.bashrc1
sleep 5
echo -e '\033[1;31mInstalling dependencies of ArchLinux and OpenJDK 7, you needs multilib repository in /etc/pacman.conf and yaourt:\e[0m'
sudo pacman -Syyu ccache  android-tools base-devel gcc git gnupg flex bison gperf sdl wxgtk squashfs-tools curl ncurses zlib schedtool perl-switch zip unzip libxslt libxml2 lzo lzop python2 gcc-multilib lib32-zlib lib32-ncurses lib32-readline python-virtualenvwrapper
sleep 5
yaourt -S jre6 jdk6
sleep 5
sudo source /usr/bin/virtualenvwrapper.h
sudo mkvirtualenv -p `which python2` python2
sudo workon python2
sleep 10
echo -e '\033[1;31mInstalling CCACHE in your .bashrc thanks to crewrktablets.de:\e[0m'
echo "export USE_CCACHE=1" >> ~/.bashrc
ccache -M 30GB ~/.ccache
echo -e '\033[1;31mInstalling REPO:\e[0m'
mkdir -p ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo -e '\033[1;31mInstalling REPO in your .bashrc:\e[0m'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo -e '\033[1;31mDownloading prebuilts tools (arm-eabi 4.6) in ~/DEV:\e[0m'
mkdir ~/DEV
cd DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 5
cd
echo -e '\033[1;33mDone\e[0m'
echo -e '\033[1;33mThanks to E.P.D. Center // http://epdcenter.es\e[0m'
fi

if [ $var1 = fedora_A5 ];
then
echo -e '\033[1;31mChecking and removing previous installations:\e[0m'
sed -e 's/export USE_CCACHE=1//' ~/.bashrc >> ~/.bashrc1
sed -e 's/umask 022//' ~/.bashrc1 >> ~/.bashrc2
mv ~/.bashrc2 ~/.bashrc
rm ~/.bashrc1
sleep 5
echo -e '\033[1;31mInstalling dependencies of Fedora and OpenJDK7:\e[0m'
sudo yum install glibc.i686 ccache glibc-devel.i686 libstdc++.i686 zlib-devel.i686 \ ncurses-devel.i686 libX11-devel.i686 libXrender.i686 libXrandr.i686 gcc gcc-c++ gperf \ flex bison glibc-devel.{x86_64,i686} zlib-devel.{x86_64,i686} ncurses-devel.i686 libsx-devel \ readline-devel.i686 perl-Switch git gpg java-1.7.0-openjdk-devel.x86_64 schedtool
sleep 5
echo "export EXPERIMENTAL_USE_JAVA7=true" >> ~/.bashrc
echo -e '\033[1;31mInstalling CCACHE in your .bashrc thanks to crewrktablets.de:\e[0m'
echo "export USE_CCACHE=1" >> ~/.bashrc
ccache -M 30GB ~/.ccache
echo -e '\033[1;31mInstalling REPO:\e[0m'
mkdir -p ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
sleep 3
echo -e '\033[1;31mInstalling REPO in your .bashrc:\e[0m'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo -e '\033[1;31mDownloading prebuilts tools (arm-eabi 4.6) in ~/DEV:\e[0m'
mkdir ~/DEV
cd ~/DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 5
cd
echo -e '\033[1;33mDone\e[0m'
echo -e '\033[1;33mThanks to E.P.D. Center // http://epdcenter.es\e[0m'
fi
if [ $var1 = fedora_A4 ];
then
echo -e '\033[1;31mChecking and removing previous installations:\e[0m'
sed -e 's/export USE_CCACHE=1//' ~/.bashrc >> ~/.bashrc1
sed -e 's/umask 022//' ~/.bashrc1 >> ~/.bashrc2
mv ~/.bashrc2 ~/.bashrc
rm ~/.bashrc1
sleep 5
echo -e '\033[1;31mInstalling dependencies of Fedora and OpenJDK6:\e[0m'
sudo yum install glibc.i686 ccache glibc-devel.i686 libstdc++.i686 android-tools zlib-devel.i686 \ ncurses-devel.i686 libX11-devel.i686 libXrender.i686 libXrandr.i686 gcc gcc-c++ gperf \ flex bison glibc-devel.{x86_64,i686} zlib-devel.{x86_64,i686} ncurses-devel.i686 libsx-devel \ readline-devel.i686 perl-Switch git gpg java-1.7.0-openjdk-devel.x86_64 schedtool java-1.6.0-openjdk-devel
sleep 5
echo -e '\033[1;31mInstalling CCACHE in your .bashrc thanks to crewrktablets.de:\e[0m'
echo "export USE_CCACHE=1" >> ~/.bashrc
ccache -M 30GB ~/.ccache
echo -e '\033[1;31mInstalling REPO:\e[0m'
mkdir -p ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
sleep 3
echo -e '\033[1;31mInstalling REPO in your .bashrc:\e[0m'
echo "export PATH=~/bin:$PATH" >> ~/.bashrc
echo "umask 022" >> ~/.bashrc
echo -e '\033[1;31mDownloading prebuilts tools (arm-eabi 4.6) in ~/DEV:\e[0m'
mkdir ~/DEV
cd DEV
git clone https://github.com/EPDCenterSpain/rk-prebuilts.git
sleep 5
cd
echo -e '\033[1;33mDone\e[0m'
echo -e '\033[1;33mThanks to E.P.D. Center // http://epdcenter.es\e[0m'
fi
if [ $var1 = rockchip ];
then
echo -e '\033[1;31mInstalling rockchip flash tool in ~/DEV || Thanks to crewrktablets // http://crewrktablets.de\e[0m:'
cd ~/DEV
wget https://epdcenter.es/images/FTP/rockchip/Linux_Upgrade_Tool_v1.21.zip
sleep 5
unzip Linux_Upgrade_Tool_v1.21.zip
cd
sleep 5
echo -e '\033[1;31mFixing ADB Rockchip\e[0m'
touch /etc/udev/rules.d/51-android.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="2207", MODE="0666", GROUP="plugdev"' >> /etc/udev/rules.d/51-android.rules
udevadm control --reload-rules
sleep 2
mkdir ~/.android
touch ~/.android/adb_usb.ini
echo '0x2207' >> .android/adb_usb.ini
sleep 5
echo -e '\033[1;33mDone\e[0m'
echo -e '\033[1;33mThanks to E.P.D. Center // http://epdcenter.es\e[0m'
sleep 2
fi
