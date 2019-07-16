#!/usr/bin/env bash

function T() {
  echo 'T'
  return 0
}

function F() {
  echo 'F'
  return 1
}


echo 'T && T'
T && T
echo $?

echo 'F && T'
F && T
echo $?

echo 'T && F'
T && F
echo $?

echo '! F && T'
! F && T
echo $?

echo '! T && F'
! T && F
echo $?

echo '! (F && T)'
! (F && T)
echo $?

echo '! (T && F)'
! (T && F)
echo $?

exit 0

cat << EOS
$ ./condition.sh
T && T
T
T
0
F && T
F
1
T && F
T
F
1
! F && T
F
T
0
! T && F
T
1
! (F && T)
F
0
! (T && F)
T
F
0
EOS