/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getScriptExecTimeOut

>**getScriptExecTimeOut()**

## Description

Function to read the duration of the script execution time-out either for the controller or the processor thread, depending on where getScriptExecTimeOut is called. The duration for the script execution time-out is returned in milliseconds. The default is 5000 ms for the controller thread and 1000 ms for the processor thread.

**Available in:** Controller, Processor.

## Return Values

Returns the duration of the script execution time-out in milliseconds either for the controller or the processor thread.

## Example

```lua
 -- Print the script execution time-out of the controller and the processor thread.
   
print("Script execution time-out of "..getContext()..": "..getScriptExecTimeOut().." ms.")
  
function onInit()
    print("Script execution time-out of "..getContext()..": "..getScriptExecTimeOut().." ms.")
end
```

**See also:** [setScriptExecTimeOut](./setScriptExecTimeOut.md)