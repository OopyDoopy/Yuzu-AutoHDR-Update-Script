$Yuzu = "$env:LOCALAPPDATA\yuzu"

function UpdateYuzu {
	Start-Process -FilePath "$Yuzu\pinEApple-liftinstall.exe" -Wait
}

function YuzuToCemu {
	Rename-Item -Path "$Yuzu\yuzu-windows-msvc-early-access\yuzu.exe" -NewName "cemu.exe"
	Rename-Item -Path "$Yuzu\yuzu-windows-msvc-early-access" -NewName "cemu"
}

function CemuToYuzu {
	Rename-Item -Path "$Yuzu\cemu\cemu.exe" -NewName "yuzu.exe"
	Rename-Item -Path "$Yuzu\cemu" -NewName "yuzu-windows-msvc-early-access"
}

if (Test-Path -Path "$Yuzu\cemu") {
	if (Test-Path -Path "$Yuzu\cemu\cemu.exe") {
		CemuToYuzu
		UpdateYuzu
		YuzuToCemu
	}
}

if (Test-Path -Path "$Yuzu\yuzu-windows-msvc-early-access") {
	if ( Test-Path -Path "$Yuzu\yuzu-windows-msvc-early-access\yuzu.exe") {
		UpdateYuzu
		YuzuToCemu
	}
}