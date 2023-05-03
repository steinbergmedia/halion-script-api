/* ANCHOR: all */

// ANCHOR: function
>**getMidiModule(nameOrPosition)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
Function to retrieve the [MidiModule](./MidiModule.md) object of a MIDI module in the specified layer. For example, ``this.parent`` defines the parent layer of the script module as the layer to be searched in. This function does not search in sublayers. A particular MIDI module can be searched by name or position. The position is the number indexing the MIDI modules in the specified layer. If several MIDI modules share the same name, only the first match will be returned. If no argument is set, the function returns the first MIDI module it finds.

**Available in:** Controller, Processor.
// ANCHOR_END: description

#### Arguments

// ANCHOR: arguments
|Argument|Description|Value Type|
|:-|:-|:-|
|**nameOrPosition**|The name or position of the MIDI module. Set this to ``nil`` to deactivate the search filter.|string or number, optional|
// ANCHOR_END: arguments

#### Return Values

// ANCHOR: return-values
Returns the [MidiModule](./MidiModule.md) object of the found MIDI module. Returns ``nil`` if no MIDI module is found.
// ANCHOR_END: return-values

#### Example

// ANCHOR: example
```lua
-- Locate the first MIDI module in the program and print its name.

module = this.program:getMidiModule()
 
if module then
    print(module.name)
else
    print("Could not find a MIDI module!")
end
```
// ANCHOR_END: example

/* ANCHOR_END: all */