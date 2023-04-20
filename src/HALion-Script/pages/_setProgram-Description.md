>**setProgram(programOrNil, index)**

#### Description

Function to set a program in the specified slot of the Program Table or the Slot Rack of the plug-in instance. Before calling this function, you must access the Instance object with this.program.instance. The program is determined by its Program object. To specify the slot in the Program Table, you must use the index argument. To specify the slot in the Slot Rack, you must use a Slot object, for example, via getSlot. The program can be removed from the Slot Rack by using nil as argument.

>&#10069; An [Element](./Element.md) object can only have one parent. It cannot be child of multiple parents. Therefore, each program can exist only once in the **Program Table**. Furthermore, an [Element](./Element.md) object that you retrieved from the running plug-in instance cannot be added twice to the **Program Table**. It must be removed before it can be added again. The [Element](./Element.md) objects that you retrieve through [loadPreset](./loadPreset.md) or [loadPresetAsync](./loadPresetAsync.md) can be added freely to the **Program Table**, because these functions create a copy of the [Element](./Element.md) objects when reading them.

**Available in:** Controller.

#### Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**programOrNil**|The [Program](./Program.md) object of the program. Programs can be removed from the **Slot Rack** by using ``nil``.|[Program](./Program.md) or ``nil``|
|**index**|The index of the slot in the **Program Table** where you want to set the program.|number, optional|

#### Example

{{#include ./_appendInsertElement-Example.md}}

```lua
-- Set Program.vstpreset in slot 3 of the Program Table and slot 1 of the Slot Rack.
     
-- Get the file path for user VST presets.
path = getUserPresetPath()
     
-- Load the VST preset.
loadedProgram = loadPreset(path.."/Program/Program.vstpreset")
  
-- Set loadedProgram in slot 3 of the Program Table.
this.program.instance:setProgram(loadedProgram, 3)
 
-- Set program in slot 1 of the Slot Rack.
program = this.program.instance:getProgram(3)
this.program.instance:getSlot(1):setProgram(program)
  
-- Clear slot 2 of the Slot Rack.
this.program.instance:getSlot(2):setProgram(nil)
```
