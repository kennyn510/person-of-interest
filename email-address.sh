#!/bin/bash
clear
browser="open -a Safari.app "

read -p "Enter email address: (eg. myBOSS@sucks.com): " EMAIL

$browser https://www.google.com/search?q=intext:\"$EMAIL\"
$browser http://www.spokeo.com/social/profile?q=$EMAIL
