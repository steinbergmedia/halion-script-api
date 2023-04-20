/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getSlotIndex

>**getSlotIndex()**

#### Description

Function to retrieve the index of the slot in which the program is loaded.

**Available in:** Processor.

#### Return Values

Returns the index of the slot in which the program is loaded.

#### Example

```lua
-- Print the slot index with onInit and onNote.
 
function onInit()
    print("Program loaded in slot #:", getSlotIndex())
end
 
function onNote(event)
    postEvent(event)
    print("Note-on event received in slot #:", getSlotIndex())
end
```