#!/usr/bin/awk -f

# 命令行时 记得使用 单引号 '

BEGIN{
    sum = 0
}

{
    sum += $1
    array[$1] += 1
}

END {
    print "sum:", sum
    for(k in array) {
        print "== ", k, array[k]
    }
}

# cat a.txt | awk 'BEGIN {} {s[$11]+=1} END{ for (i in s){print s[i], i"xyz" }}' | sort -nr
