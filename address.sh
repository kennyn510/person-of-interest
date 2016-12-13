#!/bin/bash
clear
browser="open -a Safari.app "

read -p "Enter stree name and #: " STREET
read -p "Enter house/building #: " UNIT
read -p "Enter city: " CITY
read -p "Enter state: " ST
read -p "Enter zip code: " ZIP

$browser http://www.spokeo.com/$ST/$CITY/"$STREET"/$UNIT
$browser http://www.whitepages.com/search/FindNearby?utf8=%E2%9C%93&street="$STREET"&where=$CITY+$ST+$ZIP
