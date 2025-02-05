/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Tutorials & Guidelines](./HALion-Tutorials-Guidelines.md) / [Tutorials](./Tutorials.md) /

# Creating a Modulation Matrix

---

**On this page:**

[[_TOC_]]

---

This tutorial describes how to create a Modulation Matrix using a [Template List](../../HALion-Macro-Page/pages/Template-List.md). The Modulation Matrix provides several slots for assigning a predefined set of sources and destinations using [Custom Multi Level Menus](./Custom-Multi-Level-Menus-II.md).

![Creating a Modulation Matrix](../images/Creating-a-Mod-Matrix.png)

The macro page provides controls for the destinations Pitch, Cutoff and Level. Page tabs provide access to the controls of the sources LFO 1, LFO 2 and Pitch Env. You can assign sources and destinations using the menus in the Modulation Matrix or by using drag and drop.

* Drag the page tab of the desired source to the destination of your choice.

The next free slot in the Modulation Matrix will be used for the drag and drop assignment. If there is no free slot, dragging and dropping is no longer supported.

## Example VST Preset

* [Creating a Modulation Matrix 01.vstpreset](../vstpresets/Creating%20a%20Modulation%20Matrix%2001.vstpreset)

The Modulation Matrix in this example uses both UI and MIDI script functionality. The corresponding scripts are provided, but not explained in detail line by line. Instead, the connections and interactions between the UI elements and the UI and MIDI scripts are explained so that you can adjust the number of slots and customize the look of the Modulation Matrix without the risk of introducing errors. See [How the Elements Interact](#how-the-elements-interact).

The following section describes how to access [Templates](../../HALion-Macro-Page/pages/Template.md) and edit UI and MIDI scripts.

* Load [Creating a Modulation Matrix 01.vstpreset](../vstpresets/Creating%20a%20Modulation%20Matrix%2001.vstpreset).

{{#include ./_Excerpts.md:to-explore-templates}}

{{#include ./_Excerpts.md:to-edit-ui-scripts}}

**To edit the MIDI script:**

1. In the **Program Tree**, select the Mod Matrix MIDI Module.
1. Go to the Sound editor and click **Edit Script** ![Edit Element](../images/EditElement.PNG) to open the internal script editor.

The instructions that follow use the internal script editor.

## Prerequisites

* An instrument with macro page.
* Load [Creating a Modulation Matrix 01.vstpreset](../vstpresets/Creating%20a%20Modulation%20Matrix%2001.vstpreset) and your instrument side-by-side into HALion.

## Overview of Workflows

* Add more destinations and an additional source and implement the drag and drop functionality to assign them.
* Add the destinations and the source to the Modulation Matrix menus and the associated UI and MIDI scripts.
* Increase the number of slots in the Modulation Matrix.
* Add more sources and destinations to the Modulation Matrix menus and the associated UI and MIDI scripts.
* Copy the templates and resources from the [Example VST Preset](#example-vst-preset) to your macro page.
* Copy the code of the UI and MIDI scripts from the [Example VST Preset](#example-vst-preset) into the corresponding scripts of your instrument.
* Change the look of the FX Chain to match the look of your instrument.

## Adding More Destinations

At the top of the macro page are the Pitch, Cutoff, and Level controls, which also serve as destinations (drop targets) for modulation sources. Let's add Resonance and Pan as additional destinations (drop targets).

### Add the Resonance Control and Drop Target

1. In the **Macro Page Designer**, go to the **GUI Tree** and navigate to the Upper branch.
2. Move the Cutoff group to Position X = 75.

#### Properties

|Property|Value|
|:-|:-|
|Position X|75|

3. Duplicate the Cutoff group, then rename the duplicate to "Resonance" and set it's Position X to 150.

#### Properties

|Property|Value|
|:-|:-|
|Name|Resonance|
|Position X|150|
|Position Y|0|

4. Go inside the new Resonance group and rename the knob template to "Resonance_1".

#### Properties

|Property|Value|
|:-|:-|
|Name|Resonance_1|

5. Set the template parameters of the knob as follows.

#### Template Parameters

|Template Parameter|Value|
|:-|:-|
|Value|@0:Layer/@0:Zone/@id:140003|
|Label|RESONANCE|
|Unit| |

This connects the knob to the zone's resonance parameter. Unit is not used.

6. Rename the [Drop](../../HALion-Macro-Page/pages/Drop.md) control to "DropResonance" and set its Value to "@DropResonance".

#### Properties

|Property|Value|
|:-|:-|
|Name|DropResonance|
|Value|@DropResonance|

The UI script uses the @DropResonance UI variable to resolve the source that is being dropped.

### Add the Pan Control and Drop Target

The following steps are almost identical to the previous ones, except that a different knob template is used in step 4.

1. In the **Macro Page Designer**, go to the **GUI Tree** and navigate to the Upper branch.
2. Move the Level group to Position X = 225.

#### Properties

|Property|Value|
|:-|:-|
|Position X|225|

3. Duplicate the Level group, then rename the duplicate to "Pan" and set it's Position X to 300.

#### Properties

|Property|Value|
|:-|:-|
|Name|Pan|
|Position X|300|

4. Go inside the new Pan group and rename the knob template to "Pan_1" and change its template reference to "KnobSVG7_Bi".

#### Properties

|Property|Value|
|:-|:-|
|Name|Pan_1|
|Template|KnobSVG7_Bi|

5. Set the template parameters of the knob as follows.

#### Template Parameters

|Template Parameter|Value|
|:-|:-|
|Value|@0:Layer/@0:Zone/@id:320014|
|Label|PAN|
|Unit| |

This connects the knob to the zone's pan parameter. Unit is not used.

5. Rename the [Drop](../../HALion-Macro-Page/pages/Drop.md) control to "DropPan" and set its Value to "@DropPan".

#### Properties

|Property|Value|
|:-|:-|
|Name|DropPan|
|Value|@DropPan|

The UI script uses the @DropPan UI variable to resolve the source that is being dropped.

### Add the Drop Targets to the UI Script

* Open the UI script in the internal script editor and replace the following lines

```lua
defineParameter("DropPitch",     nil, "", function() addModRow(DropPitch,     2) end)
defineParameter("DropCutoff",    nil, "", function() addModRow(DropCutoff,    3) end)
defineParameter("DropLevel",     nil, "", function() addModRow(DropLevel,     5) end)
```

with these lines:

```lua
defineParameter("DropPitch",      nil, "", function() addModRow(DropPitch,     2) end)
defineParameter("DropCutoff",     nil, "", function() addModRow(DropCutoff,    3) end)
defineParameter("DropResonance",  nil, "", function() addModRow(DropResonance, 4) end)
defineParameter("DropLevel",      nil, "", function() addModRow(DropLevel,     6) end)
defineParameter("DropPan",        nil, "", function() addModRow(DropPan,       8) end)
```
There is one parameter for each destination/drop target. When a source is dropped on a destination/drop target, the parameter's change callback calls addModRow with the Drag Info string as the first argument. For more information about the Drag Info property, see [Drag Group](../../HALion-Macro-Page/pages/Drag-Group.md). The second argument is the index of the destination as defined in the MIDI script. See [Add Resonance and Pan to the MIDI Script](#add-resonance-and-pan-to-the-midi-script). The two arguments are used to make the assignment in the Modulation Matrix.

### Add Resonance and Pan to the MIDI Script

You must add Resonance and Pan to the ``destinations`` table in the MIDI script. Otherwise, when you drop a source on the newly added destinations, the assignment won't be correct.

1. Go to the **Program Tree** and select the Mod Matrix MIDI Module.
1. Open the MIDI script in the internal script editor and add the lines marked with a comment.

```lua
destinations = {
	{ name = "-"                         , dest = ModulationDestination.unassigned },
	{ name = "Pitch"                     , dest = ModulationDestination.pitch },
	{ name = "Cutoff"                    , dest = ModulationDestination.cutoff },
	{ name = "Resonance"                 , dest = ModulationDestination.resonance }, -- Add this line.
	{ name = "Level"                     , dest = ModulationDestination.level },
	{ name = "Volume 1"                  , dest = ModulationDestination.volume1 },
	{ name = "Volume 2"                  , dest = ModulationDestination.volume1 },
	{ name = "Pan"                       , dest = ModulationDestination.pan }, -- Add this line.
	{ name = "LFO 1 Frequency"           , dest = ModulationDestination.lfo1Freq },
	{ name = "LFO 1 Shape"               , dest = ModulationDestination.lfo1Shape },
	{ name = "LFO 2 Frequency"           , dest = ModulationDestination.lfo2Freq },
	{ name = "LFO 2 Shape"               , dest = ModulationDestination.lfo2Shape },
	{ name = "Pitch Env Init Level"      , dest = ModulationDestination.pitchEnvStartLev },
	{ name = "Pitch Env Attack"          , dest = ModulationDestination.pitchEnvAttack },
	{ name = "Pitch Env Att Level"       , dest = ModulationDestination.pitchEnvAttLev },
	{ name = "Pitch Env Decay"           , dest = ModulationDestination.pitchEnvDecay },
	{ name = "Pitch Env Sustain"         , dest = ModulationDestination.pitchEnvSustain },
	{ name = "Pitch Env Release"         , dest = ModulationDestination.pitchEnvRelease },
	{ name = "Pitch Env Rel Level"       , dest = ModulationDestination.pitchEnvRelLev },
}
```
### Add Resonance and Pan to the Destination Menu

To make Resonance and Pan selectable in the Modulation Matrix, you must add them to the destination menu. The destination menu is part of the MatrixRow template which is part of the [Template List](../../HALion-Macro-Page/pages/Template-List.md) that creates the Modulation Matrix. The destination menu opens the MenuDestRoot template, a [Custom Multi Level Menu](./Custom-Multi-Level-Menus-II.md), that consists of several MenuEntry templates that select the destination via their OnValue. The OnValue corresponds to the index of the ``destinations`` table as previously defined in the MIDI script. However, the index of OnValue starts at zero. Thus, OnValue is always one less than the index of the corresponding destination in the ``destinations`` table. 

1. Go to the **Templates Tree**, navigate to **library > Tutorial Controls > Popup** and edit **MenuDestRoot**.
2. Select the Level template and set its properties and template parameters as follows.

#### Properties

|Property|Value|
|:-|:-|
|Position X|0|
|Position Y|76|

#### Template Parameters

|Template Parameter|Value|
|:-|:-|
|OnValue|4|
|Value|@MenuValue|
|Label|Level|

3. Duplicate the Level template, then rename the duplicate to "Pan" and set its properties and template parameters as follows.

#### Properties

|Property|Value|
|:-|:-|
|Name|Pan|
|Position X|0|
|Position Y|95|

#### Template Parameters

|Template Parameter|Value|
|:-|:-|
|OnValue|7|
|Value|@MenuValue|
|Label|Pan|

4. Duplicate the Cutoff template, then rename the duplicate to "Resonance" and set its properties and template parameters as follows.

#### Properties

|Property|Value|
|:-|:-|
|Name|Resonance|
|Position X|0|
|Position Y|57|

#### Template Parameters

|Template Parameter|Value|
|:-|:-|
|OnValue|3|
|Value|@MenuValue|
|Label|Resonance|

5. Select the Volume 1 template and set its OnValue to 5.

6. Select the Volume 2 template and set its OnValue to 6.

The @MenuValue UI variable is defined in the UI script of the MenuDestRoot template. Basically, MenuValue controls which entry is selected and displayed as such. MenuValue is connected to the exclusive switch within the MenuEntry template. The exclusive switch controls whether an entry is displayed as selected or not. MenuValue is also exported and thus set by the Destination template parameter of the [Template List](../../HALion-Macro-Page/pages/Template-List.md) that creates the Modulation Matrix.

At this point in the tutorial, the new destinations should work with drag and drop and be selectable from the Modulation Matrix.

## Adding an Additional Source

The page tabs provide access to the LFO 1, LFO 2 and Pitch Env controls, but also serve as [Drag Group](../../HALion-Macro-Page/pages/Drag-Group.md) controls for assigning the modulation sources to modulation destinations. Let's add the User Env as an additional source to see how this works.

### Add the User Env Page Tab and Drag Group

### Add the User Env Controls

### Add the User Env to the UI Script

### Add the User Env to the MIDI Script

## How the Elements Interact
