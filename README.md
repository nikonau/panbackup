# Palo Alto Firewall Powershell Backup Script
A simple Powershell script to backup single or multiple PA Networks firewall config via the management XML API.

# Instructions:
1. Create the folder c:\panbackup\ on your Windows Server.

2. Create a local administrator on the firewall as a member of super users (read only). This will allow rights to export the full configuration with phash keys. Which means you can restore the config on a new appliance easily.
The below PA documentation details how to create a local firewall administrator:
https://docs.paloaltonetworks.com/pan-os/9-0/pan-os-admin/firewall-administration/manage-firewall-administrators/configure-administrative-accounts-and-authentication/configure-a-firewall-administrator-account.html

3. Generate your API key as follows:
https://<firewall>/api/?type=keygen&user=<username>&password=<password>
You can also generate api key via cURL as per the PA documentation below:
https://docs.paloaltonetworks.com/pan-os/9-0/pan-os-panorama-api/get-started-with-the-pan-os-xml-api/get-your-api-key.html

4. Test your powershell script! You may need to set the correct saving path, file names etc. Add a scheduled task and viola! Peace of mind.
