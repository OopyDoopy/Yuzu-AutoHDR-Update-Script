# Yuzu-AutoHDR-Update-Script

This is a very simple Powershell script I made for personal use to update Yuzu when renaming the folder and file for use with AutoHDR. To be clear, this script is ONLY useful while it is required to rename the yuzu folder and executable to cemu to make autohdr engage.

All the script does is check what paths you have and rename them accordingly to run the official updater and then rename it back. By default the script will automatically work for anybody that uses Yuzu installed to the default location (local appdata folder), just make sure you download the correct script for your branch of Yuzu (mainline, early access, or pineapple). If you've installed Yuzu elsewhere, you'll need to update the variable `$Yuzu` at the top of the script to equal your Yuzu installation path (the directory that contains "maintenancetool.exe"). Be sure to leave off a trailing slash.

For the Pineapple Yuzu version, use the Pineapple liteinstall updater and place the installer into the same Yuzu folder as the official updater.

To run, place both the respective ps1 and bat files in the same directory (whatever directory you want) and double click the bat file.
