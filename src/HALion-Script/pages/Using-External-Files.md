/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Advanced Topics](./Advanced-Topics.md) /

# Using External Files

The functions of the i/o and the os library of Lua allow you to manipulate external files. External files are files that are managed by the operating system. For example, while developing large scale sample instruments, it can be helpful to read or write files with comma separated values (.csv). To protect private data, the location for reading and writing files is limited to the folders ./Documents/Steinberg and ./Documents/tmp of the user. In addition, you can read files from the VST sound that contains the executed script. Lua's i/o functions allow you to manipulate files. The functions ``os.remove`` and ``os.rename`` from the os library allow you to delete or rename files. See [Input and Output Facilities](https://www.lua.org/manual/5.2/manual.html#6.8) and [Operating System Facilities](https://www.lua.org/manual/5.2/manual.html#6.9) for a description of the respective functions.

>&#10069; The functions ``io.popen``, ``io.tmpfile``, ``os.execute``, ``os.exit``, ``os.getenv``, ``os.setlocale`` and ``os.tmpname`` are not supported.

## Retrieving the File Path of ./Documents/Steinberg

You can use the function [getUserSubPresetPath](./getUserSubPresetPath.md) to retreive the file path of ./Documents/Steinberg on your system.

### Example

```lua
-- Retrieve ./Documents/Steinberg/ and try to open a file.

fileLocation = getUserSubPresetPath()
posStart, posEnd = string.find(getUserSubPresetPath(), "Steinberg/")
fileLocation = string.sub(fileLocation, 1, posEnd)
 
io.input(fileLocation.."some.txt")
```