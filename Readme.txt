Unreal Engine 4 Scripting System
---
Targeting UE Versions: From 4.12 To 5.0
---
There are two methods to launch UE4SS.
Method #1 - With Launcher:
Put files anywhere.
Change game path & executable file in UE4SS-settings.ini and UE4SS-LauncherSettings.ini.
Launch UE4SS_Launcher.exe.
Your game will launch and ue4ss.dll will automatically be injected.
Quick-launch: Put all files & folders in the same directory as the "<GameName>-Win64-Shipping.exe" file and launch UE4SS_Launcher.exe.
              Your game will automatically be found and the dll will be injected automatically.

Method #2 - Manual Injection:
Put files anywhere.
Update paths & executable name in UE4SS-settings.ini.
Launch your game.
Inject ue4ss.dll after the game has loaded all the way to the main menu.
Quick-launch: Put all files & folders in the same directory as the "<GameName>-Win64-Shipping.exe" file and inject ue4ss.dll.
---
Fixing compatibility problems:
If the DLL was unable to find some offsets then you can manually provide the missing offsets in UE4SS-settings.ini.
If the DLL was unable to find matches for all signatures then you can provide your own scan scripts in the UE4SS_Signatures folder.
The following files can be created:
GUObjectArray.lua, GetFullName.lua, StaticFindObject.lua, FName_ToString.lua, FName_Constructor.lua, FStringDestructor.lua, ProcessEvent.lua, StaticConstructObject.lua.
Each file must contain two global functions: "Register()" and "OnMatchFound(MatchAddress)".
The "Register" function must return as a string the signature to scan for in the following format: NIB1 NIB2 / NIB1 NIB2 / NIB1 NIB2
The "OnMatchFound" function takes the address of the signature match as an integer.
It must return the address of the scan target (for example: address of GUObjectArray).
You have access to the following Lua functions in the "OnMatchFound" function: print, DerefToInt32(Address).
You also have access to the standard Lua libraries.
There is an example script included.



[ Credits ]
CheatingMuppet { Creator }
CasualGamer - https://www.youtube.com/channel/UC1a4ido01YxP_3-nspjmqCw {
	Injector code & aob scanner is heavily based on his work, 90% of that code is his.
}
SunBeam {
	Extra signature for function 'GetFullName' for UE4.25.
	Regex to check for proper signature format when loaded from ini.
	Lots and lots of work on signatures

}
tomsa @ CasualCommunity discord {
	const char* to vector<int> converter {
		tomsa: Idea & most of the code
		CheatingMuppet: Nibblet support
	}
}
boop / usize {
    New UFunction hook method
}

[ Thanks to everyone who helped with testing ]
GreenHouse
Otis_Inf
SunBeam
Motoson @ StartYourSystems discord
hooter @ StartYourSystems discord
Synopis