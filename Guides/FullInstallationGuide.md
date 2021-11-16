# Full installation guide

## Core structure concept

There are three concepts you need to know about.

1. The `root directory`.
    - This directory contains the ue4ss dll file.
2. The `working directory`.
    - This directory contains configuration and mod files. 
3. The `game executable directory`.
    - This directory contains the executable file for your game and is not part of the UE4SS directory structure.

---

## Choosing an installation directory

---

You can install UE4SS in a couple of different ways.

### Method #1

The prefered way to install UE4SS is to extract the zip file in any directory _outside_ the game directory, this is what's known as the `root directory`.
You will then create a folder inside with the name of your game, this is what's known as the `working directory`.

If the path to your game executable is
```
D:\Games\Epic Games\SatisfactoryEarlyAccess\FactoryGame\Binaries\Win64\FactoryGame-Win64-Shipping.exe
```

Then the name of your `working directory` should be `SatisfactoryEarlyAccess`.  
This directory will be automatically found and used by UE4SS if it exists.

As of UE4SS 1.0, the following files & folders exist inside the `working directory`:

- Mods
  - Mod folders...
  - mods.txt
- UE4SS-settings.ini

Moving `UE4SS-ObjectDump.txt` to the `working directory` in 1.1 is being considered, this guide will be updated to reflect that when and if the change is made.

---

### Method #2

⚠ Using method #2 will mean that the `root directory` and `working executable directory` are merged into one single directory that happens to also be the same directory as your `game directory`.

If you don't want to bother with a global installation directory then the most straight forward way to install UE4SS is to just drop all the necessary files in `<game executable directory>/<game_name>/Binaries/Win64/`.
