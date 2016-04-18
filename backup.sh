#!/bin/bash

echo "backup files on your pc in a compressed format "
echo "Type backup for a backup of files or type restore for restoration of files "
read option
if [ $option = "backup" ];then
	echo "full or incremental backup"
	read choice
	if [ $choice = "full" ];then

		echo "attempting backup"
		cd /
		mkdir /home/$USER/Desktop/backupstuff
		rsync --progress --delete -aE --exclude=/home/$USER/Desktop/backupfiles --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude=/lost+found /* /home/$USER/Desktop/backupstuff
	
 elif [ $option = "restore" ];then
	echo "attempting to restore"
else
	echo "no argument passed "
fi
