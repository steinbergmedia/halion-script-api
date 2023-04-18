/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# endUndoBlock

>**endUndoBlock()**

## Description

Function to terminate an undo block. An undo block begins with [startUndoBlock](./startUndoBlock.md). Any changes between the beginning and the termination of the undo block will be summarized into one undo entry in the undo history.

**Available in:** Controller.

## Example

```lua
-- Simple demonstration of the syntax, see startUndoBlock for a more detailed example.
 
-- Begin the undo block.
startUndoBlock("Undo Block") -- Only this entry will display in the undo history.
 
-- Any changes you want to be summarized in the undo history must be put here.
  
endUndoBlock() -- Terminate the undo block.
```

**See also:** [startUndoBlock](./startUndoBlock.md), [getUndoContext](./getUndoContext.md), [Undo Context Types](./Undo-Context-Types.md)