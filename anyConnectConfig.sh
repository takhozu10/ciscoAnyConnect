#!/bin/bash
#Personalize AnyConnect configuration file reside in /Users/$curUser/.anyConnect to reflect current user's information.

#Define Current user in a variable
curUser=`ls -l /dev/console | cut -d " " -f 4`;

#Define Current user's home directory
curUserDir=`echo /Users/$curUser/.anyconnect`;

#Replace variables with current user information
sed -i '.bak' "s/userInfo/$curUser/g" "$curUserDir";

#Remove Backup file
backupFile=`echo /Users/$curUser/.anyconnect.bak`;
rm "$backupFile";