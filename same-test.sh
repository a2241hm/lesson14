#!/bin/bash
tmp=/tmp/$$

echo "input 2 arguments" > $tmp-args
echo "input natural number" > $tmp-nat

ERROR_EXIT(){
	echo "$1" >&2
	rm -f $tmp-*
	exit 1
}

#start test
# test1 引数の数が足りない
./same.sh 2> $tmp-ans && ERROR_EXIT "error in test1-1"
diff $tmp-ans $tmp-args || ERROR_EXIT "error in test1-2"
