# Yuzu-AutoHDR-Update-Script

This is a very simple Powershell script I made for personal use to update Yuzu when renaming the folder and file for use with AutoHDR. To be clear, this script is ONLY useful while it is required to rename the yuzu folder and executable to cemu to make autohdr engage.

All the script does is check what paths you have and rename them accordingly to run the official updater. By default the script will automatically work for anybody that uses mainline Yuzu installed to the default location (local appdata folder). If you've installed Yuzu elsewhere, you'll need to update the variable `$Yuzu` at the top of the script to equal your Yuzu installation path (the directory that contains "maintenancetool.exe"). Be sure to leave off a trailing slash.

If you're new to Powershell scripts, you'll need to launch a Powershell terminal as admin and run this command: `Set-ExecutionPolicy Unrestricted`. This will allow you to execute unsigned scripts that come from the internet. Be VERY careful when running scripts from the internet, always read through the code to make sure nothing appears malicious. To run the script, right click it and select "Run with PowerShell".
