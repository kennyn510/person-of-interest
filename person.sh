#!/bin/bash
clear
browser="open -a Safari.app "

# Get user input
read -p "Enter your first and last name: " FIRST LAST
read -p "Enter your middle initial: " MI
read -p "Enter your city: " CITY
read -p "Enter your state: " ST

# Open browser
$browser https://www.beenverified.com/people/$FIRST-$LAST/
$browser http://www.411.com/name/$FIRST-$LAST/$CITY-$ST
$browser https://www.intelius.com/search/people/$FIRST-$MI-$LAST/$CITY-$ST
$browser http://www.whitepages.com/name/$FIRST-$LAST/$CITY-$ST
$browser http://spokeo.com/$FIRST-$LAST/$ST
$browser https://www.google.com/search?q=inurl:\"/$FIRST-$LAST/\""\"$FIRST $LAST\""
