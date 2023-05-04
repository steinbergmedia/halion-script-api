/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getUndoContext

>**getUndoContext()**

## Description

Function to check if the current script execution is part of an undo or redo operation.

**Available in:** Controller.

## Return Values

The function returns

* 1 if the changes come from an undo operation,
* 2 if the changes come from a redo operation,
* ``nil`` if the changes do not come from an undo or redo operation.

## Enumerators

You can use the following enumerators to identify the [Undo Context Types](./Undo-Context-Types.md).

{{#include ./Undo-Context-Types.md:undo-context-types}}

## Example

```lua
-- Do nothing if the change callback is executed as part of an undo or redo operation.

function onP1Changed()
  if getUndoContext() then
    return -- do nothing
  end

  -- The following code is only executed if it is not part of an undo or redo operation.
  local oldName = this.name
  local newName = "Some Name "..p1
  startUndoBlock("Name of '"..oldName.."' set to '"..newName.."'")
    this:setName(newName)
  endUndoBlock()
end
  
defineParameter("p1", onP1Changed)
```

**See also:** [startUndoBlock](./startUndoBlock.md), [endUndoBlock](./endUndoBlock.md), [Undo Context Types](./Undo-Context-Types.md)