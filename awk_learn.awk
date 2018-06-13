#!/usr/bin/awk -f

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

