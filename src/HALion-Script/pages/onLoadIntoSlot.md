/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# onLoadIntoSlot

>**onLoadIntoSlot()**

#### Description

This callback function is called when the program is loaded into the Slot Rack. Any global statements are executed in advance. [onInit](./onInit.md) is called after onLoadIntoSlot.

**Available in:** Controller.

#### Example

```lua
-- Print a message when loading the program into the slot rack.

function onLoadIntoSlot()
   print('"Hello" from the Slot Rack.')
end
```

**See also:** [onRemoveFromSlot](./onRemoveFromSlot.md), [onInit](./onInit.md)