/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# setScriptExecTimeOut

>**setScriptExecTimeOut(duration)**

## Description

Function to specify the maximum allowed execution time of a function call in the script. If the execution of a function call exceeds the execution time-out, the script will end with an execution error. This prevents the infinite execution of scripts, e.g., in case of an infinite loop. The script execution time-out can be defined separately for the controller and the processor thread. Which execution time-out is set, depends on where setScriptExecTimeOut is called. The duration for the script execution time-out is specified in milliseconds. The default is 5000 ms for the controller thread and 1000 ms for the processor thread.

**Available in:** Controller, Processor.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**duration**|The duration for the script execution time-out in milliseconds.|number|

## Example

```lua
-- Half the default script execution time-out of the controller and the processor thread.
 
-- Controller thread.

setScriptExecTimeOut(getScriptExecTimeOut() / 2)
print("Execution time-out of "..getContext()..": "..getScriptExecTimeOut().." ms.")
 
 -- Processor thread.

function onInit()
    setScriptExecTimeOut(getScriptExecTimeOut() / 2)
    print("Execution time-out of "..getContext()..": "..getScriptExecTimeOut().." ms.")
end
```

**See also:** [getScriptExecTimeOut](./getScriptExecTimeOut.md)