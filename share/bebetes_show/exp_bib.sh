#!/bin/bash

#mkdir tmp
#cp -r "share/bebetes_show/lib_data/lib_${1}_behavior.so" "tmp/"
#cp "lib/lib_${1}_behavior.so" "tmp/"
#tar cjf "${1}.bib.bbs" "tmp/*"
#rm -r tmp

mkdir /tmp/bbstmp
mkdir /tmp/bbstmp/lib_data
cp -r ${4}/*.[^c] /tmp/bbstmp/
cp -r ${4}gtk+extra /tmp/bbstmp
#cp `gcc -MM src/lib_trafic_behavior.c` /tmp/bbstmp/
#for i in `cat src/lib_trafic_behavior.c | grep include | grep "\"" | cut -d"\"" -f2 | cut -d"\"" -f1` ; do
#    cp ${4}${i} /tmp/bbstmp/${i}
#done
cp -r ${3}${1}/ /tmp/bbstmp/lib_data
cp -r ${2} /tmp/bbstmp/
cd /tmp/bbstmp
tar cjf ~/${1}.bib.bbs *
rm -r /tmp/bbstmp

#tar xjf "${1}" -C "/tmp/bbstmp"
#${4} `ls -1 /tmp/bbstmp | grep "\.c" | cut -f1 -d"."` `ls -1 /tmp/bbstmp | grep ".c"`
#mv "/tmp/bbstmp/*.so" "${2}"
#cp -r "/tmp/bbstmp/lib_data/*" "${3}"
#rm -r tmp