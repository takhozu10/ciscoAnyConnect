# Cisco AnyConnect for Mac 4.4  
Customize installation for enterpriase organization.  

__CiscoChoices.XML__ allows Cisco AnyConnect 4.4 package to be installed using the vendor provide pacakge but customize which modules to install.  
__anyConnectConfig.sh__ will customize the login by retrieving and replacing logged in use's username and vpn domain name to organziation specific.  
__anyconnect__ file is a configuration file pre-configure to organization specific information.  


## Install Instructions  
1. Copy vendor provided Cisco AnyConnect pkg file and CiscoChoices.xml file to the computer.  
2. Run the following command to run the installer  
    $sudo installer -pkg /package/path/ -target / -applyChoiceChangesXML /xml/path/  
3. Copy anyconnect file to /Users/<username>/ (anyconnect will need to be renamed as .anyconnect to hide)  
4. Run anyConnectConfig.sh script to customize using user specific configuration.

##Install using JAMF Pro
1. Create DMG file that contains anyConnect.pkg, CiscoChoices.xml, and anyconnect file. 
    a. Place both anyConnect.pkg and CiscoChoices.xml in /tmp/ directory.
    b. Place anyconnect /Users/admin/ directory for now. We will use FEU (Fill existing user home direcotries) feature in JSS to place the .anyconnect file to existing user's directory.
2. 