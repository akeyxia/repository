#!/bin/bash

# Reference: <http://www.tuxera.com/community/open-source-ntfs-3g>

CPUS=$(( $(cat /proc/cpuinfo | grep processor | tail -n 1 | cut -d":" -f 2) + 1))
install_dir=`pwd`/__INSTALL

make distclean
rm ${install_dir} -rf
mkdir ${install_dir}

./configure CC=arm-linux-gnueabihf-gcc --host=arm-linux-gnueabihf --prefix=${install_dir} --exec-prefix=${install_dir} --enable-really-static --disable-ntfsprogs
#./configure CC=arm-linux-gnueabihf-gcc --host=arm-linux-gnueabihf --prefix=${install_dir} --exec-prefix=${install_dir} --disable-ntfsprogs

make -j${CPU}
make install

