/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getKeySwitches

>**getKeySwitches()**

## Description

Function to access the internal key switch array. This array manages the display of the key switches on the plug-in keyboard and the information that is handed over to Cubase's Expression Map when you use **Import Key Switches** in the Inspector. This function does not retrieve key switches from other MIDI modules like MegaTrig, for example. The first time you call getKeySwitches, the returned array will be empty. You must initialize the array by specifying each key switch using a table with a set of predefined fields. The valid fields are listed below. The key switches you specify will be displayed on the plug-in keyboard with predefined colors and the information from the ``.name`` field displayed as tooltip. You can use [getKeyProperties](./getKeyProperties.md) to override the predefined colors. Key colors retrieved from other MIDI modules will be overridden by the key switches specified in the script. If key switches from different script modules are assigned to the same keys, the key switches of the script module that comes earlier in the processing chain will override the key switches of script modules located behind them in the processing chain. The specified key switches can be imported as an Expression Map in Cubase by using **Import Key Switches** in the Inspector.

>&#10069; Specifying a key switch by using getKeySwitches must not be confused with implementing the playing logic for the key switches. The playing logic must be implemented separately in the MIDI processing part of your script.

**Available in:** Controller.

## Fields

|Field|Description|Value Type|
|:-|:-|:-|
|**.name**|The name of the key switch. It will be displayed as tooltip on the keyboard and in the Expression Map of Cubase.|string|
|**.keyMin**|The note number of the lowest key in the range of 0 to 127.|number|
|**.keyMax**|The note number of the highest key in the range of 0 to 127. If no value is set, this will default to keyMin.|number, optional|
|**.keyRemapped**|The note number of the remote key in the range of 0 to 127. If no value is set, this will default to -1.|number, optional|

## Return Values

Returns the internal key switch array.

## Example

```lua
-- Define key switches that can be imported as Expression Map in Cubase.
 
-- Get key switch array.
keySwitches = getKeySwitches()
 
-- Assign values to name and keyMin.
keySwitches[1] = { name = "Legato",    keyMin = 21 }
keySwitches[2] = { name = "Spiccato",  keyMin = 22 }
keySwitches[3] = { name = "Pizzicato", keyMin = 23 }
keySwitches[4] = { name = "Tremolo",   keyMin = 24 }
```

**See also:** [getKeyProperties](./getKeyProperties.md)