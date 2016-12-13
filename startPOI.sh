#!/bin/bash
# DEFAULT COLOR CODES
ESC_SEQ="\x1b["
RESET=$ESC_SEQ"39;49;00m"
RED=$ESC_SEQ"31;01m"
GREEN=$ESC_SEQ"32;01m"
YELLOW=$ESC_SEQ"33;01m"
BLUE=$ESC_SEQ"34;01m"
MAGENTA=$ESC_SEQ"35;01m"
CYAN=$ESC_SEQ"36;01m"

k_banner(){
echo -e "$RED===============================================$RESET"
echo -e "$RED    
 _                                _____ __  ___  
| |                              | ____/_ |/ _ \ 
| | _____ _ __  _ __  _   _ _ __ | |__  | | | | |
| |/ / _ \ '_ \| '_ \| | | | '_ \|___ \ | | | | |
|   <  __/ | | | | | | |_| | | | |___) || | |_| |
|_|\_\___|_| |_|_| |_|\__, |_| |_|____/ |_|\___/ 
                       __/ |            
                      |___/
Created by\nhttps://github.com/kennyn510$RESET"
echo -e "$RED===============================================$RESET"
}

clear

# Check if user is using OS X, if not exit
if [[ $(uname) != "Darwin" ]]; then
        echo -e "${RED}Mac OS X not detected${RESET}"
        exit
fi

k_banner
echo -e "${YELLOW}PERSON OF INTEREST\nA script for gathering data from online about a specific person.$RESET"
echo
echo -e "1) PERSON"
echo -e "2) PHONE NUMBER"
echo -e "3) ADDRESS"
echo -e "4) EMAIL ADDRESS"
echo -e "5) PLATE NUMBER (coming soon)"
echo -e "6) COMPANY (coming soon)"
echo -e "q) Quit"
echo
read -p "Select an option: " POI
case $POI in
	1) ./person.sh
	;;
	2) ./phone-number.sh
	;;
	3) ./address.sh
	;;
	4) ./email-address.sh
	;;
	q) echo "Peace."
	   exit
	;;
	*) echo "Select your option"
	   $0
	;;
esac
