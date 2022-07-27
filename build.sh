#!/usr/bin/env sh

NAME=palefill
MYVER=${1:-dev}
VER=$(grep -Po "(?<=<em:version>).+(?=<)" install.rdf)

FILE=../${NAME}-${VER}-${MYVER}.xpi

if test -f "$FILE"; then
  rm $FILE
fi

FILES="install.rdf bootstrap.js options.xul lib/*.js"
zip -qr9XD $FILE $FILES

