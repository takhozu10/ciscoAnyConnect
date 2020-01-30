# Cisco AnyConnect for Mac 4.8
Customize installation for enterpriase organization.  

* __CiscoChoices.XML__ Customize what Cisco Anyconnect components to be installed. By default, this XML is set to only install VPN module.

* __anyConnectConfig.sh__ will install and customize the login by retrieving and replacing logged in user's username.  
* __anyconnect__ file is a configuration file pre-configure to organization specific information such as username and VPN host name.

## CiscoChoices.xml file
This file allows custom installation method to be applied to the package.  
Currently, this file only enables VPN module during the installation. In order to enable the other modules during the installation, change the integer tag to the following  
```<integer>1</integer>```

## Install using JAMF Pro
1. Create DMG file that contains anyConnect.pkg, CiscoChoices.xml, and anyconnect file.
    * Place both **anyConnect.pkg** and **CiscoChoices.xml** in /tmp/ directory.
    * Place **anyconnect** file in /Users/admin/ directory for now. We will use FEU (Fill existing user home direcotries) feature in JSS to place the .anyconnect file to existing user's directory.
    * User JAMF Composer to create the DMG file that contains anyConnect.pkg, CiscoChoices.xml, and anyconnect file.
2. Upload the anyConnectConfig.sh file to JAMF Pro, use this as the install script.
3. Create a policy that contains both DMG file and anyConnectConfig.sh script, make sure to run the DMG first within the policy.
4. After the install, open Cisco AnyConnect, only VPN module should be installed, automatically set the host name to **vpn.company.com**, and username should be pre-populated specific to that user.
