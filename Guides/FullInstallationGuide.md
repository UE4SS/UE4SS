# Full installation guide

## Core structure concept

There are four concepts you need to know about.

1. The `root directory`.
    - This directory contains the ue4ss dll file.
2. The `working directory`.
    - This directory contains configuration and mod files and is located inside the `root directory`.
3. The `game directory`.
    - This directory usually contains a small executable with the name of your game and a folder with the same name.  
      This executable is _not_ your actual game but instead it's just a small wrapper that starts any 3rd party launcher such as Steam or if there is none then it launches the real executable.
    - Example of a `game directory`: `D:\Games\Epic Games\SatisfactoryEarlyAccess\`
4. The `game executable directory`.
    - This directory contains the real executable file for your game and is not part of the UE4SS directory structure.
    - This directory also contains `UE4SS.log` and `UE4SS-ObjectDump.txt`.
    - Example of a `game executable directory`: `D:\Games\Epic Games\SatisfactoryEarlyAccess\FactoryGame\Binaries\Win64\`

## Choosing an installation directory

You can install UE4SS in a couple of different ways.

### Method #1

The preferred way to install UE4SS is to extract the zip file in any directory _outside_ the `game directory`, this is what's known as the `root directory`.  
You will then create a folder inside with the name of your game and drag `UE4SS-settings.ini` in to it, this is what's known as the `working directory`.

If the path to your game executable is

```md
D:\Games\Epic Games\SatisfactoryEarlyAccess\FactoryGame\Binaries\Win64\FactoryGame-Win64-Shipping.exe
```

Then the name of your `working directory` should be `SatisfactoryEarlyAccess`.  
This directory will be automatically found and used by UE4SS if it exists.

As of UE4SS 1.0, the following files & folders exist inside the `working directory`:

- Mods
  - Mod folders
  - mods.txt
- UE4SS-settings.ini

Moving `UE4SS-ObjectDump.txt` to the `working directory` in 1.1 is being considered, this guide will be updated to reflect that when and if the change is made.

Now all you need to do is start your game and point your injector of choice to `<root directory>/ue4ss.dll`.

---

### Method #2

⚠ Using method #2 will mean that the `root directory` and `working directory` are treated as one single directory that happens to also be the same directory as your `game working directory`.

If you don't want to bother with a global installation directory then the most straight forward way to install UE4SS is to just drop all the necessary files in `<game executable directory>`.

Now all you need to do is start your game and point your injector of choice to `<game executable directory>/ue4ss.dll`.

---

## Last but not least...

The preferred way to install UE4SS is method #1 because it will allow you to collect all your UE4SS related stuff in the same place for easy access and it will also allow you to use the same dll for all games.

If you keep a copy of `UE4SS-settings.ini` inside the `root directory` then this file will act as a default for all the games that don't have a `working directory` as long as you still point your injector to the `root directory`.  
This way you can use method #2 for most of your games and at the same time you can use method #1 for other games if method #2 is problematic for you.
