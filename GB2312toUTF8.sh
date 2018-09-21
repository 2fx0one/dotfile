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
    file $f
    result=`file "$f" | cut -d, -f2 | awk '{print $1, $2}'`

    if [ "${result}"x = 'ISO-8859 text'x ]; then
        iconv -f GB2312 -t UTF-8 "$f" > "$tmp_file"
        cp "$tmp_file" "$f"
    elif [ "${result}"x = 'Non-ISO extended-ASCII'x ]; then
        iconv -f GBK -t UTF-8 "$f" > "$tmp_file"
        cp "$tmp_file" "$f"
    fi
done

