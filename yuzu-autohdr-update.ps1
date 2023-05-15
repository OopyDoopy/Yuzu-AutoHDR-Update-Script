$Yuzu = "$env:LOCALAPPDATA\yuzu"

function UpdateYuzu {
	Start-Process -FilePath "$Yuzu\maintenancetool.exe" -Wait
}

function YuzuToCemu {
	Rename-Item -Path "$Yuzu\yuzu-windows-msvc\yuzu.exe" -NewName "cemu.exe"
	Rename-Item -Path "$Yuzu\yuzu-windows-msvc" -NewName "cemu"
}

function CemuToYuzu {
	Rename-Item -Path "$Yuzu\cemu\cemu.exe" -NewName "yuzu.exe"
	Rename-Item -Path "$Yuzu\cemu" -NewName "yuzu-windows-msvc"
}

if (Test-Path -Path "$Yuzu\cemu") {
	if (Test-Path -Path "$Yuzu\cemu\cemu.exe") {
		CemuToYuzu
		UpdateYuzu
		YuzuToCemu
	}
}

if (Test-Path -Path "$Yuzu\yuzu-windows-msvc") {
	if ( Test-Path -Path "$Yuzu\yuzu-windows-msvc\yuzu.exe") {
		UpdateYuzu
		YuzuToCemu
	}
}