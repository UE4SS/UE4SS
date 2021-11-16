# Unreal Engine 4 Scripting System

## Targeting UE Versions: From 4.12 To 5.0

---

### Launching UE4SS:

- Quick-launch: Put all files & folders in the same directory as the "\<GameName>-Win64-Shipping.exe" file and inject ue4ss.dll.
- Otherwise:
    - Put files anywhere.
    - Update paths & executable name in UE4SS-settings.ini.
    - Launch your game.
    - Inject ue4ss.dll with the injector of your choice after the game has loaded all the way to the main menu.

### [Fixing compatibility problems](https://github.com/UE4SS/UE4SS/blob/master/Guides/FixingBrokenAOBs.md)

---

## Credits

- CheatingMuppet `Creator`
- CasualGamer - https://www.youtube.com/channel/UC1a4ido01YxP_3-nspjmqCw
```md
	- Injector code & aob scanner is heavily based on his work, 90% of that code is his.
```
- SunBeam
```md
	- Extra signature for function 'GetFullName' for UE4.25.
	- Regex to check for proper signature format when loaded from ini.
	- Lots and lots of work on signatures
```
- tomsa @ CasualCommunity discord
```md
	- const char* to vector<int> converter
		- tomsa: Idea & most of the code
		- CheatingMuppet: Nibblet support
```
- boop / usize
```md
    - New UFunction hook method
```
---

## Thanks to everyone who helped with testing

- GreenHouse
- Otis_Inf
- SunBeam
- Motoson @ StartYourSystems discord
- hooter @ StartYourSystems discord
- Synopis