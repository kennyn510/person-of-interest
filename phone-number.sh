#!/bin/bash
clear
browser="open -a Safari.app"

read -p "Enter full phone # (eg. 313 513 2521): " P0 P1 P2
FULL="$P0-$P1-$P2"

$browser http://www.spokeo.com/$P0-$P1$P2
$browser https://www.intelius.com/search/reversephone/$FULL
$browser http://www.whitepages.com/phone/$FULL
$browser http://www.reversephonelookup.com/results.php?phone=$P0$P1$P2
$browser https://www.google.com/search?q=intext:\"$FULL\"\"phone\"\"$P0$P1$P2\"
