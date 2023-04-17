/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# startUndoBlock

>**startUndoBlock(name, id)**

## Description

Function to combine multiple undo entries into one undo block. For example, if your script inserts several elements into the program, you might want to be able to remove all the elements in one single undo operation. The function returns an ID for identifying the undo block. This ID can be used as second argument in later calls to startUndoBlock for combining the undo blocks that refer to this ID.  The ``name`` argument will be used as entry in the undo history. If multiple undo blocks are combined, only the name of the last undo block will be used. This function must be terminated using [endUndoBlock](./endUndoBlock.md). If startUndoBlock is called within a callback function, [endUndoBlock](./endUndoBlock.md) is called automatically when the callback function ends.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**name**|This will be displayed as entry in the undo history.|string|
|**id**|Set this to combine the undo blocks that refer to this ID.|number|

## Return Values

Returns an ID that can be used to identify the undo block.

## Example 1

```lua
-- Change param1, then param2.
-- The changes of param1 and param2 are combined into one undo entry.

function param1Changed()
  id = startUndoBlock("param1 Changed")
end
function param2Changed()
  startUndoBlock("param2 Changed", id)
end
defineParameter{ name = "param1", onChanged = param1Changed }
defineParameter{ name = "param2", onChanged = param2Changed }
```
## Example 2

To explore the following script:

1. Download [Program.vstpreset](../vstpresets/Program.vstpreset).
1. Drag the preset on the **MediaBay** to import it to the user folder for VST presets.
1. Create an empty program and add a script module.
1. Paste the script into the text editor of the script module and execute the script.
1. Check the entries in the undo history with and without undo block.

```lua
-- Insert elements from Program.vstpreset into the current program.
 
-- Get the file path for user VST presets.
path = getUserPresetPath()
 
-- Load the VST preset.
loadedProgram = loadPreset(path.."/Program/Program.vstpreset")
 
-- Get elements from loadedProgram.
midiModule = loadedProgram:findMidiModules()[1] -- first MIDI module in loadedProgram
subLayer = loadedProgram:findLayers()[1] -- first layer in loadedProgram
bus = loadedProgram:findBusses()[1] -- first bus in loadedProgram
  
program = this.program
  
-- Begin the undo block.
startUndoBlock("Insert Modules") -- Only this entry will display in the undo history.
 
    -- Insert the elements.
    if midiModule then
        program:insertMidiModule(midiModule, 1)
    end
    if subLayer then
        program:insertLayer(subLayer, 1)
    end
    if bus then
        program:insertBus(bus, 1)
    end
 
endUndoBlock() -- Terminate the undo block.
```

**See also:** [endUndoBlock](./endUndoBlock.md), [getUndoContext](./getUndoContext.md), [Undo Context Types](./Undo-Context-Types.md)