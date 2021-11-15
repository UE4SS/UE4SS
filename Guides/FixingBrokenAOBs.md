# Fixing missing AOBs

If UE4SS won't properly start because of missing AOBs, you can provide your own AOB and callback using Lua.

For this guide you'll need to know what a `root directory` and `working directory` is.
A `root directory` is always the directory that contains `ue4ss.dll`.
A `working directory` is either the directory that contains `ue4ss.dll` OR a game specific directory, for example `<root directory>/SatisfactoryEarlyAccess`.

## How to setup your own AOB and callback

1. Create the directory `UE4SS_Signatures` if it doesn't already exist in your `working directory`.
2. Identify which AOBs are broken and needs fixing.
3. Make the following files inside `UE4SS_Signatures`, depending on which AOBs are broken:
    - GUObjectArray.lua
    - StaticFindObject.lua
    - FName_ToString.lua
    - FName_Constructor.lua
    - FStringDestructor.lua
    - ProcessEvent.lua
    - StaticConstructObject.lua
4. Inside the `.lua` file you need a global `Register` function with no params
    - Keep in mind that the names of functions in Lua files in the `UE4SS_Signatures` directory are case-senstive.
5. The `Register` function must return the AOB that you want UE4SS to scan for.
    - The format is `N N/N N/N N` where `N` means `Nibble`.
    - An example of an AOB in Cheat Engine format: `8B 51 04 85`.
    - An example of an AOB in UE4SS format: `5 1/5 1/0 4/8 5`.
    - The AOB scanner supports wildcards for either nibble or the entire byte.
6. Next you need to create a global `OnMatchFound` function.
    - This function has one param, `MatchAddress`, and this is the address of the match.
    - It's in this function that you'll place all your logic for calculating the final address.
    - The most simple way to do this is to make sure that your AOB leads directly to the start of the final address. That way you can simply return `MatchAddress`.
    - In the event that you're doing something more advanced (e.g. indirect aob scan), UE4SS makes available two global functions, `DerefToInt32` which takes an address and returns as a 32-bit integer whatever data is located there OR `nil` if the address could not be dereferenced, and `print` for debugging purposes.

## Example script (Simple, direct scan)

```lua
function Register()
    return "4 8/8 B/C 4/5 7/4 8/8 3/E C/7 0/8 0/3 D/? ?/? ?/? ?/? ?/? ?/4 8/8 9"
end

function OnMatchFound(MatchAddress)
    return MatchAddress
end
```

## Example script (Advanced, indirect scan)

```lua
function Register()
    return "4 1/B 8/0 1/0 0/0 0/0 0/4 8/8 D/1 5/? ?/? ?/? ?/? ?/4 8/8 D/0 D/? ?/? ?/? ?/? ?/E 9"
end

function OnMatchFound(MatchAddress)
    local InstrSize = 0x05

    local JmpInstr = MatchAddress + 0x14
    local Offset = DerefToInt32(JmpInstr + 0x1)
    local Destination = JmpInstr + Offset + InstrSize

    return Destination
end
```



