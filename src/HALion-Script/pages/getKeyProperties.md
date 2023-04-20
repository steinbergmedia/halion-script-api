/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getKeyProperties

>**getKeyProperties()**

#### Description

Function to access the internal key properties array. This array manages the colors and tooltips of the keys on the plug-in keyboard and the instrument names that will be shown in Cubase's Drum Editor when you use **Create Drum Map from Instrument** in the Inspector. This function does not retrieve colors or tooltips from other MIDI modules like MegaTrig, for example. Therefore, the first time you call getKeySwitches, the returned array will be empty. You must initialize the array by specifying each key property using a table with a set of predefined fields. The valid fields are listed below. The index of the array must be in the range from 0 to 127. Each index adresses the properties of the key with the corresponding note number. You change the properites by creating a table for the desired index/key and then you assign values to the fields ``.color``, ``.tooltip`` or ``.drummap``. Making changes to the properties of a key will override any properties the key might have from other MIDI modules, e.g., the tooltip and coloring from a key switch of a MegaTrig module, even if the MIDI module is located earlier in the processing chain, i.e., higher in the hierarchy of the Program Tree. Any key properties from other script modules that are later in the processing chain will also be overridden. The key properties from the first script module in the Program Tree always have priority.

**Available in:** Controller.

#### Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.color**|The color of the key on the plug-in keyboard. There are twenty-four predefined colors. You set them with a number in the range from 1 to 24.|number|
|**.tooltip**|The string for the tooltip of the key on the plug-in keyboard.|string|
|**.drummap**|The string that will be shown as instrument name in Cubase's Drum Editor when you use **Create Drum Map from Instrument** in the Inspector.|string|

>&#10069; To clear a property, set the respective field to ``nil``. Setting ``.color`` or ``.tooltip`` to nil will use the next valid key properties, i.e., the color and toolip from another MIDI or script module. If no properties from other modules are available, no color and tooltip will be used.

#### Return Values

Returns the reference to the internal key properties array.

#### Example 1

```lua
-- Set and clear colors on the keyboard.
 
-- Initialize variabes.
local keys = getKeyProperties()
local keyColor = 1
local noteNumber = 36 -- C1
local blackKeys = { [1] = true, [3] = true, [6] = true, [8] = true, [10] = true }
 
-- Assign all 24 colors to the white keys of the keyboard starting from C1.
while keyColor <= 24 do
    -- get step in octave
    local step = noteNumber % 12
    -- use only white keys
    if not blackKeys[step] then
        keys[noteNumber] = { color = keyColor }
        keyColor = keyColor + 1
    end
    noteNumber = noteNumber + 1
end
 
-- Clear the color of the played key.
function onNote(event)
    postEvent(event)
    if keys[event.note] then
        keys[event.note].color = nil
    end
end
```

#### Example 2

```lua
 -- Set the GM drum map as tooltip and drummap name.

local GMStandardDrumMap = { "Bass Drum 2",     "Bass Drum 1",     "Side Stick",
                            "Snare Drum 1",    "Hand Clap",       "Snare Drum 2",
                            "Low Tom 2",       "Closed Hi-hat",   "Low Tom 1",
                            "Pedal Hi-hat",    "Mid Tom 2",       "Open Hi-hat",
                            "Mid Tom 1",       "High Tom 2",      "Crash Cymbal 1",
                            "High Tom 1",      "Ride Cymbal 1",   "Chinese Cymbal",
                            "Ride Bell",       "Tambourine",      "Splash Cymbal",
                            "Cowbell",         "Crash Cymbal 2",  "Vibra Slap",
                            "Ride Cymbal 2",   "High Bongo",      "Low Bongo",
                            "Mute High Conga", "Open High Conga", "Low Conga",
                            "High Timbale",    "Low Timbale",     "High Agogo",
                            "Low Agogo",       "Cabasa",          "Maracas",
                            "Short Whistle",   "Long Whistle",    "Short Guiro",
                            "Long Guiro",      "Claves",          "High Wood Block",
                            "Low Wood Block",  "Mute Cuica",      "Open Cuica",
                            "Mute Triangle",   "Open Triangle",
                          }
 
-- Initialize variables.
local keys = getKeyProperties()
local noteNumber = 35 -- Note number of Bass Drum 2.
 
-- Set the GM drum map.
for i, drumName in ipairs(GMStandardDrumMap) do
    keys[noteNumber + (i - 1)] = { tooltip = drumName, drummap = drumName }
end
```

**See also:** [getKeySwitches](./getKeySwitches.md)