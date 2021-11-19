rm -f log$1-$2-$3-$4
rm -rf report$1-$2-$3-$4
jmeter -n -t  load_test_getBalance.jmx -l ./log$1-$2-$3-$4 -e -o ./report$1-$2-$3-$4  -Dtest.threads=$1 -Dtest.nextadd=$2 -Dtest.runtime=$3 -Dtest.holdtime=$4
