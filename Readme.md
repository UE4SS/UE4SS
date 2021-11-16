# Unreal Engine 4 Scripting System

## Targeting UE Versions: From 4.12 To 5.0

---

### Launching UE4SS

- Quick-launch: Put all files & folders in the same directory as the "\<GameName>-Win64-Shipping.exe" file and inject ue4ss.dll.
- Otherwise:
  - Put files anywhere.
  - Update paths & executable name in UE4SS-settings.ini.
  - Launch your game.
  - Inject ue4ss.dll with the injector of your choice after the game has loaded all the way to the main menu.

### [Fixing compatibility problems](https://github.com/UE4SS/UE4SS/blob/master/Guides/FixingBrokenAOBs.md)

---

## Credits

- **CheatingMuppet** `Creator`
- **CasualGamer**
  - Injector code & aob scanner is heavily based on his work, 90% of that code is his.
- **SunBeam**
  - Extra signature for function 'GetFullName' for UE4.25.
  - Regex to check for proper signature format when loaded from ini.
  - Lots and lots of work on signatures
- **tomsa**
  - const char* to vector\<int> converter
    - tomsa: Idea & most of the code
    - CheatingMuppet: Nibblet support
- **boop** / **usize**
  - New UFunction hook method

---

## Thanks to everyone who helped with testing

- GreenHouse
- Otis_Inf
- SunBeam
- Motoson
- hooter
- Synopis
