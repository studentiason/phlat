#!/bin/not yet:P
set -e
basedir="$(dirname "$(readlink -f "${0}")")"
cd "$basedir"
if [ ! -f "$basedir"/phlatsettings.sh ]; then
	printf "wrong dir!\n"
	exit 1
fi
if [ "${DESKTOP_SESSION}" = "mate" ] ;then
_desktop=mate
elif [ "${DESKTOP_SESSION}" = "xfce" ] ;then
_desktop=xfce
else 
	printf "not supported desktop found! - aborting!\n"
fi
