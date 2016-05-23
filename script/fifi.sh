#!/bin/bash - 
#===============================================================================
#
#          FILE: fifi.sh
# 
#         USAGE: ./fifi.sh 
# 
#===============================================================================

set -o nounset                              # Treat unset variables as an error


echo "###############################"
echo " fifi.sh ( install firefox )"
echo "###############################"

function goFirefox
{
  echo -e "\n\nRemove old Firefox"
  echo -e "------------------"
  sudo apt-get remove --purge libreoffice*
  echo -e "\n\nAdd nex PPA & update :"
  echo -e "---------------------"
  sudo add-apt-repository ppa:libreoffice/libreoffice-5-0
  sudo apt-get update
  echo -e "\n\nInstall libreoffice with some fr stuff :"
  echo -e "----------------------------------------"
  sudo apt-get install libreoffice
  sudo apt-get install libreoffice-l10n-fr libreoffice-help-fr hyphen-fr

  echo -e "\n\nFinish ! but you should read this :\n
 \t* https://doc.ubuntu-fr.org/libreoffice\n
 \t* https://doc.ubuntu-fr.org/apt\n
 \t* https://doc.ubuntu-fr.org/ppa\n"
}

while true; do
    read -p "Do you wish to install firefox 5 from PPA ( Y/N )?" yn
    case $yn in
        [Yy]* ) goFirefox ; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
