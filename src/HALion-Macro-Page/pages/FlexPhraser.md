/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# FlexPhraser

---

**On this page:**

[[_TOC_]]

---

## Description

The FlexPhaser template contains controls for selecting the phrases, adjusting the performance parameters like Swing, Gate Scale, etc., and for using the eight variations of the FlexPhraser MIDI module. In addition, there are controls for recording the MIDI output of the FlexPhraser and to export the recorded phrase via drag and drop.

To implement the functionality of the eight variations and for exporting the recorded MIDI output the [Internal](./Internal.md) control was used. The performance parameters like Swing, Gate Scale, Vel Scale, etc. are connected to the eight variations by corresponding UI variables and they must be part of this template. To guarantee the operation of the performance paramters, the eight variations and the MIDI phrase export, the preconfigured properties should not be modified. The look and the size of the controls can be modified freely.

**To explore the functionality and connections:**

1. Load the [Init Basic Controls.vstpreset](../vstpresets/Init%20Basic%20Controls.vstpreset) from the [Basic Controls](./Exploring-Templates.md#basic-controls) library.
2. Open the **Macro Page Designer**, go to the GUI Tree and navigate to FlexPhraser Page > Arp Parameter. 
3. Select FlexPhaser View and click Edit to examine the template.

>&#10069; The other control templates inside the Arp Parameter group are directly connected to the FlexPhraser MIDI module and should not require detailed explanation. The control template for creating User phrases can be found in the StepSEQ group. See [FlexPhraserStepSeq](./FlexPhraserStepSeq.md) for details.

## Template Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Properties.md:name}}
{{#include ./_Properties.md:position-size}}
{{#include ./_Properties.md:attach}}
{{#include ./_Properties.md:tooltip}}
{{#include ./_Properties.md:template}}

## Template Parameters

|Parameter|Description|
|:-|:-|
|**Scope**|Defines the path to the FlexPhraser MIDI modue that will be controlled.|
|**Product**|Product specifies the root folder for the location of the subpresets, both for loading and saving. Set this to ``HALion`` if you want to load phrases from the standard file path for subpresets. Load From (see below) must be set to ``StepSEQ Phrases``, which specifies the path to the folder that contains the subpresets for the phrases. When saving User phrases, these will be written to ./Documents/Steinberg/HALion/Sub Presets/StepSEQ Phrases on hard disk. They are displayed accordingly in the phrase selector.<p>If you wish to deliver your own User phrases as part of your library, you can set Product to the name of your instrument, e.g., ``MyProductName``. Thereby, only the User phrases for ``MyProductName`` will be shown in the phrase selector. The location of the User phrases inside the VST Sound of your library must match the path defined by Product and Load From, otherwise the phrase selector will not see these User phrases. Assuming Load From is again set to ``StepSEQ Phrases``: Then, the User phrases must be added to the folder ./*``MyProductName``*/Sub Presets/*``StepSEQ Phrases``* inside the VST Sound. When saving User phrases, these will be written to ./Documents/Steinberg/*``MyProductName``*/Sub Presets/*``StepSEQ Phrases``* on hard disk. They are displayed accordingly in the phrase selector.</p><p>You can also include both the HALion root folder and the root folder of your instrument, by setting Product to ``MyProductName``&vert;``HALion``. The phrase selector will then show the content of both locations. The path for saving a User phrase will use the first entry specified by ``MyProductName`` as root folder.</p>|
|**Load From**|Load From specifies the subpath to the location of the subpresets inside the root folder. The root folder is set by Product (see above). You can specify this subfolder freely. However, if you want to see the factory phrases, Load From must be set to ``StepSEQ Phrases`` and Product must contain ``HALion``.<p>Any User phrases you want to distribute with your library must be added to the corresponding location inside the VST Sound. For example, if Load From is set to ``StepSEQ Phrases`` and Product is set just to ``MyProductName``, the subpresets inside the VST Sound must be located at ./*``MyProductName``*/Sub Presets/*``StepSEQ Phrases``*.</p>|
|**Save To**|Allows you to specify the subpath to the location where the subpresets will be saved by default.<ul><li>If Product has only one entry, either ``Halion`` or the name of your instrument, e.g., ``MyProductName``, then the path of Load From will be included and prepend the path of Save To. See configurations 1 and 2 in the table below.</li><li>If Product has two entries, ``MyProductName``&vert;``HALion``, then only the path of Save To will be used. In this case it makes sense to set Save To to something like this: ``MyProductName``/``MySubfolder``. See configuration 3 in the table below.</li></ul>|

>&#10069; If you need further control over the content locations, you can specify the required subfolder together with the Product: **Product** = ``MyProductName/StepSEQ Phrases``&vert;``HALion/StepSEQ Phrases``. See configuration 4 in the following table.

#### Content Locations for Different Configurations

|#|Configuration|Content visible in Phrase Selector|Default Save Path|
|:-|:-|:-|:-|
|1|<p>**Product** = ``HALion``</p><p>**Load From** = ``StepSEQ Phrases``</p><p>**Save To** = ``MySubfolder``</p>|Only phrases from HALion, including any phrases the user has saved on hard disk.|./Documents/Steinberg/HALion/Sub Presets/StepSEQ Phrases/MySubfolder|
|2|<p>**Product** = ``MyProductName``</p><p>**Load From** = ``StepSEQ Phrases``</p><p>**Save To** = ``MySubfolder``</p>|Only phrases from the specified library, including any phrases the user has saved with the instrument on hard disk.|./Documents/Steinberg/MyProductName/Sub Presets/StepSEQ Phrases/MySubfolder|
|3|<p>**Product** = ``MyProductName``&vert;``HALion``</p><p>**Load From** = ``StepSEQ Phrases``</p><p>**Save To** = ``MyProductName/MySubfolder``</p>|All phrases from HALion, the specified library and any phrases the user has saved on hard disk.|./Documents/Steinberg/MyProductName/Sub Presets/MyProductName/MySubfolder|
|4|<p>**Product** = ``MyProductName/StepSEQ Phrases``&vert;``HALion/StepSEQ Phrases``</p><p>**Load From** = deactivate, leave empty </p><p>**Save To** = ``MySubfolder``</p>|All phrases from HALion, the specified library and any phrases the user has saved on hard disk.|./Documents/Steinberg/MyProductName/Sub Presets/StepSEQ Phrases/MySubfolder|

>&#10069; The location of the User phrases inside the VST Sound must match the path defined by Product and Load From, otherwise the phrase selector will not see these User phrases.

## Components inside the Template

### Controls and Subtemplates

|Item|Description|
|:-|:-|
|**DragMIDI**|This group view contains several controls which allow you to drag recorded MIDI data to your host sequencer, for example. <ul><li>**DragIcon:** An image that delivers the background bitmap.</li><li>**DragAvailable:** An animation that uses an animation to indicate if MIDI data is available.It must be connected using "@EnableDragMIDI" in the "Value" property.</li><li>**Drag MIDI recording:** An internal view providing the drag functionality. It must be connected using "dragzone_midifile" in the "View" property.</li></ul>|
|**User**|A switch that allows you to set a variation to user mode. Its Value must be set to "@UserMode".|
|**Variation**|A group view containing three subgroups providing the necessary elements to switch between variations, drag variations to trigger pads, and to open a context menu on the variation switches. These functionalities are partially realized using internal view controls that must follow certain naming conventions.The z-order is not supposed to change. (Drag Zones topmost, then Variation Popup, and Variation Selector as bottommost group.)<ul><li>**Drag Zones:** A group containing eight internal views providing drag functionality. Their "View" parameters must be set to "DragZone1" to "DragZone8".</li><li>**Variation Popup:** A group containing eight internal views providing the context menu. Their "View" parameters must be set to "ASB1" to "ASB8".</li><li>**Variation Selector:** A group containing eight exclusive switches to select the active variation. All "Value" parameters must be set to "@ActiveState" and the names of the switches must be "ASB1" to "ASB8".</li></ul>|
|**Factory/Custom**|A stack containing two pages with controls to manage either the FlexPhraser factory phrases or the user phrases.<ul><li>**Factory:** A group containing the controls required to load and display phrases.</li><ul><li>**Select:** A switch with a "Value" set to "@PhraseSelectPopup" to select phrases.</li><li>**Name:** A text control with a "Value" set to "@phrase" to display the name of the current phrase.</li><li>**Arp KeySwitchFilter:** A switch with a "Value" set to "@FilterNoises", to activate the Key Switch and Noises Filter.</li></ul><li>**Custom:** A group containing controls to select, save, delete, and display user phrases. Furthermore, there are controls for Arp Mode, Key Replace, Arp Wrap and Arp Quantize.</li><ul><li>**Select:** A switch with a "Value" set to "@PhraseSelectPopup", to select phrases. If you deliver a VST Sound container with phrases, they must be located in a folder /Steinberg/HALion/Subpresets/StepSEQPhrases or a subfolder if "Product" is set.</li><li>**Name:** A text control with a "Value" set to "@UsrArp", to display the name of the current user phrase.</li><li>**Save:** A switch with a "Value" set to "@SubPresetSave", to save phrases. Saving phrases will save them to the standard user folder /Steinberg/HALion/Subpresets/StepSEQPhrases or in a subfolder if "Product" is set.</li><li>**Delete:** A switch with a "Value" set to "@SubPresetDelete", to delete phrases.</li><li>**Arp Mode:** A menu template to change the Arp Mode.  Its "Value" must be set to "@UserArpMode".</li><li>**Key Replace:** A menu template, to specify the Key Replace. Its "Value must be set to "@KeyReplace".</li><li>**Arp Wrap:** A menu template, to specify the Wrap. Its "Value must to be set to "@Wrap".</li><li>**Arp Quantize:** A value box template, to set the intensity of the groove quantization. Its "Value must be set to "@GrooveQuantizeDepth".</li><li>**DropMIDI:** A group containing the controls that allow you to drop a MIDI file as a Groove Quantize reference.</li><ul><li>**DropIcon:** Delivers the background bitmap.</li><li>**FileDropped:** This animation indicates whether a file is present. Its "Value" must be set to "@EnableGrooveQuantize".</li><li>**Internal:** this is required to provide the drop functionality and a context menu to clear the the quantize data buffer. Its "View" parameter must be set to "@dropzone_midifile".</li></ul></ul>|
|**Arp Mute**|A switch that allows you to mute a variation. Its "Value" needs to be set to "@Mute".|
|**Arp Octaves**|A knob that controls the octave range of the variation. Its "Value" must be set to "@OctaveRange".|
|**Arp Vel Scale**|A knob that controls the velocity scale of the variation. Its "Value" must be set to "@VelocityScale".|
|**Arp Gate Scale**|A knob that controls the gate scale of the variation. Its "Value" must be set to "@GateScale".|
|**Arp Swing**|A knob that controls the swing of the variation. Its "Value" must be set to "@Swing".|
|**Arp TempoScale**|A value box that controls the note value of the tempo scale of the variation. Its "Value" must be set to "@TempoScale".|
|**Tempo**|A Disable control that specifies whether the "Arp Tempo" template inside is active. If Sync is set to on, the Tempo is disabled. Its "Value" must be set to "@Sync".|