#!/usr/bin/env bash

cat > /etc/apt/sources.list.d/crosstools.list << 'EOF'
deb http://emdebian.org/tools/debian/ jessie main
EOF


curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | sudo apt-key add -


dpkg --add-architecture armhf
apt-get update
apt-get install -y crossbuild-essential-armhf lzop ncurses-dev
