#!/bin/bash
clear
echo
echo 'This script will automatically install the Minecraft PowerPC Edition libraries'
echo 'to ~/Library/Application Support, and the Minecraft PowerPC Edition launcher'
echo 'to /Applications. Any previous installations will be completely overwritten.'
echo
while true
do
  read -p 'Begin installation? (Enter yes or no)' answer
  case $answer in
   [yY]* )
clear
echo
echo '========================================'
echo 'Installing Minecraft PowerPC Edition ... ]'
echo '========================================'
cd "$(dirname "$0")"
rm -rf ~/Library/'Application Support'/Minecraft
rm -rf /Applications/'Minecraft PowerPC Edition.app'
cp -rf Resources/Minecraft ~/Library/'Application Support'
cp -rf Resources/'Minecraft PowerPC Edition.app' /Applications
echo
echo '======================'
echo 'Installation complete! ]'
echo '======================'
sleep 5
killall Terminal
           break;;
   [nN]* ) killall Terminal;;
   * )  echo   
	echo 'Please enter yes or no to proceed.'
	echo;;
  esac
done