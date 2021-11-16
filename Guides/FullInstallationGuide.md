# Full installation guide

## Choosing an installation directory

---

You can install UE4SS in a couple of different ways.

### Method #1

The prefered way to install UE4SS is to extract the zip file in any directory _outside_ the game directory, this is what's known as the `root directory`. You will then create a folder inside with the name of your game, this is what's known as the `working directory`.

If the path to your game executable is

```
D:\Games\Epic Games\SatisfactoryEarlyAccess\FactoryGame\Binaries\Win64\FactoryGame-Win64-Shipping.exe
```

Then the name of your `working directory` should be `SatisfactoryEarlyAccess`.

This directory will be automatically found (if it exists) and used by UE4SS.

---

### Method #2

If you don't want to bother with a global installation directory then the most straight forward way to install UE4SS is to just drop all the necessary files in `<game_directory>/<game_name>/Binaries/Win64/`.
