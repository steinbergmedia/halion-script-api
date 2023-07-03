/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Tutorials & Guidelines](./HALion-Tutorials-Guidelines.md) / [How-tos](./How-tos.md) /

# Relative Paths

---

**On this page:**

[[_TOC_]]

---

Functions like [loadPreset](../../HALion-Script/pages/loadPreset.md) require a file path as argument. The function ``debug.getinfo`` from the Lua debug library returns the file path of the running script. You can use this information to create a relative file path for your script. The folders in the if branch of the following script example must match the working directory on your hard disk. How to create a working directory is described in [Using Relative Paths](./Using-Relative-Paths.md). The folders in the else branch must match the folders that you specified in the **Library Creator**. If the folder on the hard disk cannot be found, the file path of the VST sound will be used instead. Note that the VST sound must be mounted for this to work.

## Example

```lua
-- Load a sub preset from hard disk or VST sound.
-- Find relative path on hard disk.

local info = debug.getinfo(1,'S') -- Function from the Lua debug library.
local source = info.source
local pos = string.find(source, "/library/") -- Assumes the folder "/library/" contains subfolders like "/samples/", "/scripts/", "/VST3 Sub Presets/", etc.

if pos then
    contentPath = string.sub(source, 1, pos - 1).."/library/VST3 Sub Presets/"  -- The folder on disk with sub presets, for example.
else
    -- Extract VST sound GUID, e.g. "vstsound://ABCDEFGHIJKLMNOPQRSTUVWXYZ123456".
    -- The GUID of the VST sound can be found in the library creator.
    -- "SomeFolderName" is defined in the library creator.
    -- The library creator prepends "/.AppData/Steinberg/" when building the library.
    -- The content must be in the same VST sound as the script.
    contentPath = source:sub(1, 43) .. "/.AppData/Steinberg/SomeFolderName/" -- The location of the sub presets inside the vstsound.
end
 
-- Load the sub preset from the respective contentPath.
layer = loadPreset(contentPath.."SomePreset.vstpreset")
```