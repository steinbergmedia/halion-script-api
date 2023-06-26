# MIDI Note Parameters

---

**On this page:**

[[_TOC_]]

---

In HALion, value boxes for MIDI notes display the name of the MIDI note. You can set the value of a MIDI note in one of the following ways:

* Enter the MIDI note number (0 - 127),
* Enter the MIDI note name (C-2 - G8),
* Play the key on your MIDI keyboard.

By using the parameter definition of a MIDI note parameter, you can create a script parameter for this.

## Example VST Preset

* [MIDI Note Parameters.vstpreset](../vstpresets/MIDI%20Note%20Parameters.vstpreset)

## Prerequisites

* A Program with a Lua Script module and a Synth zone.
* A macro page with a value box.

## Defining a Parameter for MIDI Notes

The following example assumes that you want to split the MIDI keyboard with a split key.

1. Copy the following code to the Lua Script module.

```lua
-- Get a parameter definition of a MIDI note parameter, e.g., the LowKey parameter of the parent layer.

local paramDef = this.parent:getParameterDefinition("LowKey")

-- Define a SplitKey parameter with this parameter definition.
-- By using the parameter definition of the LowKey parameter, the script parameter will act the same.

defineParameter("SplitKey", "Split Key", paramDef, function() onSplitKeyChanged() end)
 
function onSplitKeyChanged()
    print(SplitKey)
end
```
2. Connect the script parameter to the value box on the macro page.

The SplitKey parameter will act like any MIDI note parameter in HALion: The value box displays the name of the MIDI note and you can enter values as MIDI note number, MIDI note name, or by playing the key on your MIDI keyboard.
