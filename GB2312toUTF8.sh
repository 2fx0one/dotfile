#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 [path] [fileSuffix]"
    echo "eg: $0 ~ cpp"
    exit -1
fi

dir=$1
suffix=$2

if [ ! -d $dir ]; then
    echo "$dir must be dir"
    exit -1
fi

tmp_file="/tmp/tmp$RANDOM"
for f in `find ${dir} -type f -name "*.${suffix}"`
do
    echo $f
    iconv -f GB2312 -t UTF-8 "$f" > "$tmp_file"
    cp "$tmp_file" "$f"
done

