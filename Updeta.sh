#!/bin/sh

dpkg-scanpackages -m ./debs > Packages
rm -r -f /var/mobile/Cydia/Packages.bz2
bzip2 Packages
dpkg-scanpackages -m ./debs > Packages
