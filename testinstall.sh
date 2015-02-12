#!/usr/bin/env bash

$testtotal=0
$failtotal=0

$testtotal=$testtotal+1
if [ ! -r projekte ]:
then
$failtotal=$failtotal+1
fi

echo "Total number of tests: $testtotal"
echo "Number of succesful tests: $testtotal-$failtotal"
