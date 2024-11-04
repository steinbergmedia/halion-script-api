/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Diving Deeper](./Diving-Deeper.md) /

# Script Initialization

When a program with a script is loaded into the **Slot Rack**, the global statements, all parameters and the [onLoad](./onLoad.md), [onLoadIntoSlot](./onLoadIntoSlot.md) and [onInit](./onInit.md) callbacks must be initialized. The order is as follows:

|#|Initialization of|Description|Thread|
|:-|:-|:-|:-|
|1.|Global statements|Global statements are any expressions outside a function call.|Controller|
|2.|Parameters|All parameters of the program, including the parameters that you defined in the script.|Controller|
|3.|[onLoad](./onLoad.md)|This callback function is called when the script module is loaded as part of a preset or project.|Controller|
|4.|[onLoadIntoSlot](./onLoadIntoSlot.md)|This callback function is called when the program is loaded into the **Slot Rack**.|Controller|
|5.|[onInit](./onInit.md)|This is the first callback function that is called when the processor thread is initialized.|Processor|

For more details about threads, see [Threads in HALion](./Threads-in-HALion.md).

#### Example

```lua
-- Script for testing the initialization when loading a program into the Slot Rack.
 
function onInit()
  print("onInit")  -- This is printed last, after onLoadIntoSlot.
end
 
function onLoadIntoSlot()
  print("onLoadIntoSlot")  -- This is printed after onLoad.
end
 
function onLoad()
  print("onLoad")  -- This is printed after the global statement.
end
 
print("Global statement") -- This is printed first.
```
