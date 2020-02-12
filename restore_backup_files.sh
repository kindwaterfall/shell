#!/bin/bash
backup_folder=/home/$USER/backup

for file_backup in $(ls -A $backup_folder)
do 
	if [ -f "$HOME/$file_backup" ]
	then 
		echo "$file_backup: File is exist"
	else 
		echo "Copy file in home directory: $file_backup"
		cp $backup_folder/$file_backup $HOME
	fi
done

echo "Done"