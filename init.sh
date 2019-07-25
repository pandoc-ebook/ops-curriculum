#!/bin/bash

DIR=`cd $(dirname $0);pwd`
SRC="$DIR/src"
TMP="$DIR/tmp"
REVISION="$DIR/REVISION.txt"
DIFF="$DIR/diff"

function mkDir() {
	test -d $1 || mkdir $1
}

mkDir $TMP
mkDir $DIFF

cd tmp
test -d curriculum || git clone https://github.com/opsschool/curriculum
cd curriculum && git pull

REV=`git rev-parse --short HEAD`
if [ -d $SRC ];then
	[ ! -f $REVISION ] && echo "$REVISION lost. Please re init" && exit 1
	OLDREV=`cat $REVISION`
	echo "already init."
	echo -e "see $DIFF/$REV-$OLDREV.diff\n\n"
	git diff HEAD $OLDREV  -- . ':!public' > $DIFF/$REV-$OLDREV.diff
	exit 
else
	mkDir $SRC
	echo $REV > $REVISION
fi

n=10000

for ch in `grep '   [a-z]' index.rst`;do
	newch=`echo $ch |sed 's#/#-#g'`
	pandoc $ch.rst -t gfm -o $SRC/$n-$newch.md
	((n=n+1))
done	