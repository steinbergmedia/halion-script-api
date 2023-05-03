/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# MIDI Player

## Description

The MIDI Player template allows you to control HALion's MIDI Player. It combines several controls which are preconfigured within the template and partially use dedicated internal parameters which are not supposed to change. This also guarantees that the template supports the usage of HALion's MIDI Player variations. If parameters like Swing, Gate Scale, Vel Scale, etc. are connected directly to controls outside the template, they only control the first variation. To understand the functionality and options, add the template to your macro page and enter edit mode on it. This allows you to see the structure of the template.

>&#10069; There is a large number of further MIDI Player parameters for which there are no controls in this template. These parameters can be connected to individual controls outside the template to work globally for all variations. Load the Basic Controls macro page and check the MIDI Player example page. Here, you can see how the various parameters are connected.

## Properties

|Poperty|Description|
|:-|:-|
|**Name**|The name of the FlexPhraser.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Template**|The referenced template.|
|**Scope**|Defines the path to the MIDI Player that is controlled.|
|**Product**|Set this to "HALion" if you want to load HALion factory and user MIDI files from the standard HALion path. You can also specify the name for your own product. When preparing factory MIDI Files as part of a VST Sound container, MIDI files must be located in the corresponding folder "Product"/Sub Presets/MIDI Files/. In that case, only MIDI Files located in the "Product" sub folder are shown in the MIDI file selector.|
|**Load From**|Set this to "MIDI Files" if you want to load HALion factory and your product MIDI files from the standard HALion path ( /Steinberg/HALion/Sub Presets/MIDI Files/ ). If you have defined you own product name, you can specify any path here to define where the MIDI files are located in your product VST Sound container.<p>**Example:** Product = "MyProduct" + Load From  = "My MIDI Files" will show all MIDI Files that are in your container under Steinberg/MyProduct/Sub Presets/My MIDI Files/.</p>|

## Template Components

### Controls and Sub Templates

|Item|Description|
|:-|:-|
|**DragMIDI**|This group view contains several controls which allow you to drag recorded MIDI data to your host sequencer, for example.<ul><li>**DragIcon:** An image that delivers the background bitmap.</li><li>**DragAvailable:** An animation that uses an animation to indicate if MIDI data is available. It must be connected using "@EnableDragMIDI" in the "Value" property.</li><li>**Drag MIDI recording:** An internal view providing the drag functionality. It must be connected using "dragzone_midifile" in the "View" property.</li></ul>|
|**Variation**|A group view containing three subgroups providing the necessary elements to switch between variations, drag variations to trigger pads, and to open a context menu on the variation switches. These functionalities are partially realized using internal view controls that must follow certain naming conventions.The z-order is not supposed to change. (Drag Zones topmost, then Variation Popup, and Variation Selector as bottommost group.)<ul><li>**Drag Zones:** A group containing eight internal views providing drag functionality. Their "View" parameters must be set to "DragZone1" to "DragZone8".</li><li>*Variation Popup:*  A group containing eight internal views providing the context menu. Their "View" parameters must be set to "ASB1" to "ASB8".</li><li>**Variation Selector:** A group containing eight exclusive switches to select the active variation. All "Value" parameters must be set to "@ActiveState" and the names of the switches must be "ASB1" to "ASB8".</li></ul>|
|**MIDI File Selector**|A group view containing controls to load and display MIDI files. Furthermore, a background image and a label are available.<ul><li>**Drop MIDI:** An Internal view that is required to allow the dropping of MIDI Files. The "View" parameter must be set to "dropzone_MIDI_File". Dropped MIDI Files are always written into the HALion/Subpresets/MIDI Files/User folder.</li><li>**Select:** A switch to load MIDI files. Its "Value" must be set to "@PhraseSelectPopup".</li><li>**Name:** A text control to display the name of the current phrase. Its "Value" must be set to "@Filename".</li><li>**Background:** An image control with a background bitmap for the phrase name.</li><li>**Label:** A label control for the file selector.</li></ul>|
|**MIDIP Swing**|A knob that controls the swing of the variation. Its "Value" must be set to "@Swing".|
|**MIDIP Gate Scale**|A knob that controls the gate scale of the variation. Its "Value" must be set to "@GateScale".|
|**MIDIP Vel Scale**|A knob that controls the velocity scale of the variation. Its "Value" must be set to "@VelocityScale".|
|**MIDIP Quantize Grid**|A menu that controls the quantization grid note value of the variation. Its "Value" must be set to "@QuantizeGrid".|
|**MIDIP Quantize Amount**|A knob that controls the amount of quantization of the variation. Its "Value" must be set to "@QuantizeAmount".|
|**Tempo**|A disable control that specifies whether the "Arp Tempo" template inside is active. If Sync is set to on, the Tempo is disabled. Its "Value" must be set to "@Sync".|
