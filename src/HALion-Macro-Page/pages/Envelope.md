/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# Envelope

## Description

The Envelope template allows you to control HALion's multi-stage envelopes. The template contains a combination of controls, e.g., to control the zoom level or values of the selected node. These controls are connected using UI parameters, and they must be part of the template and must use the UI variables as they are defined in the preconfigured template.

>&#10069; The envelope view that is used in the template cannot be created as an independent control directly. If certain controls are not required or wanted, e.g., no editing of values for the selected node, the respective controls can be removed to create a custom envelope template.

## Properties

|Poperty|Description|
|:-|:-|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Template**|The referenced template.|
|**Env Points**|Connect this to the Envelope Points parameter of the envelope.|
|**Mode**|Connect this to the Mode parameter of the envelope.|
|**Sync**|Connect this to the Sync parameter of the envelope.|
|**Triplet**|Connect this to the Triplet parameter of the envelope.|
|**Loop Start**|Connect this to the LoopStart parameter of the envelope.|
|**Loop End**|Connect this to the LoopEnd parameter of the envelope.|
|**Sustain**|Connect this to the SustainIndex parameter of the envelope.|
|**Playback Pos**|Connect this to the PlaybackPos parameter of the envelope.|

## Template Components

### UI Variables

These variables are needed to allow the communication between the envelope editor and other controls in the template.

|Variable|Description|Type|Range|
|:-|:-|:-|:-:|
|**index**|Index of the selected node.|integer|n.a.|
|**level**|Level of the selected node.|float|0 - 100|
|**time**|Time of the selected note.|float|0 - 30000|
|**curve**|Curvature of the selected note segment.|float|-10 - 10|
|**beat**|Time in beats.|rational|n.a.|
|**syncnote**|Specifies the note grid.|stringlist|1/1, 1/2, 1/4, 1/8, 1/16, 1/32, 1/64, 1/128, 1/256|

### Controls and Sub Templates

|Item|Description|
|:-|:-|
|**Scroll & Zoom**|This group view contains several controls which allow you to access the scroll and zoom functionalities of the envelope.<ul><li>**Scrollbar:** A range slider which needs to be configured with Low Value = "@ScrollMin" and High Value = "@ScrollMax".</li><li>**Scrollbar Background:** An image that delivers the background bitmap for the scrollbar.</li><li>**Zoom Out:** A switch that allows you to trigger the zoom out function of the envelope. Its value must be set to "@ZoomOut".</li><li>**Zoom In:** A switch that allows you to trigger the zoom in function of the envelope. Its value must be set to "@ZoomIn".</li><li>**Zoom Alternate:** A switch that allows you to switch between the last zoom state and a full zoom out. Its value must be set to "@StateA".</li><li>**Zoom1:** A switch that allows you to call zoom state 1 of the envelope. Its value must be set to "@State1".</li><li>**Zoom2:** A switch that allows you to call zoom state 2 of the envelope. Its value must be set to "@State2".</li><li>**Zoom3:** A switch that allows you to call zoom state 3 of the envelope. Its value must be set to "@State3".</li></ul>|
|**Edit**|This group view contains several controls which allow to control the selected node and some edit options of the envelope.<ul><li>**Time:** A stack with two edit controls to either set the time of a node in ms or beats. Its value is exported as "Sync", to allow a connection to the Sync parameter of the HALion engine. The "Time ms" control is set to Value = "@time", the "Time Beat" control is set to Value = "@beat".</li><li>**Mode:** A menu template, with an exported value (Mode) that can be connected to the Mode parameter of the envelope in the HALion zone.</li><li>**Sync:** A switch template, with an exported value (Sync) that can be connected to the sync parameter of the envelope in the HALion zone.</li><li>**Fixed:** A switch template, with a value set to "@fixed", which represents an integer variable defined under "Variables". This way, you can control the HALion UI parameter "Fixed" which is no Zone parameter.</li><li>**Curve:** An edit template, with a value set to "@curve", which allows you to control the curve setting of the selected node.</li><li>**Level:** An edit template, with a value set to "@level", which allows you to control the level setting of the selected node.</li><li>**Index:** An edit template, with a value set to "@index", which allows you to specify which node is selected.</li><li>**SyncNote:** A disable view, with an exported value (Sync) that can be connected to the Sync parameter of the envelope in the HALion zone. If Sync is active, the contained templates can be used to set Sync Note and Triplet.</li><li>**Sync Note:** A menu template, with a value set to "@syncnote", which represents a stringlist variable defined under "Variables". This way, you can control the HALion UI parameter "Sync Note" which is no Zone parameter.</li><li>**Triplet:** A switch template, with an exported value (Triplet), which can be connected to the Triplet parameter of the envelope in the HALion zone.</li></ul>|
|**Envelope View**|Provides the graphical envelope editor. Several of its parameters are exported to be connected on a template instance level to the HALion engine (Value, Mode, Sync, Triplet, Loop Start/End, Sustain and Play Pos). Other parameters are set to the same internal variables as the controls mentioned above, to allow for communication between the envelope view and the connected controls (SyncNote, Fixed, Index, Level, Time, Beat and Curve).|
|**Env Background**|The background bitmap for the envelope.|

### Envelope View

#### Properties

In addition to standard properties like size, position, etc., the envelope view provides a number of properties and colors to customize its appearance and behavior.

|Poperty|Description|
|:-|:-|
|**Name**|The name of the envelope view.|
{{#include ./_Position-Size.md}}
{{#include ./_Attach.md}}
{{#include ./_Tooltip.md}}
|**Style**|<ul><li>**Bipolar:** Activate this style for bipolar envelopes like pitch or pan.</li><li>**Scrollbar:** If this is active, the view can be scrolled and zoomed.</li><li>**Cross:** Shows a cross line when editing nodes.</li><li>**Grid:** Shows a time grid.</li><li>**Play Pos:** Shows the current playback position on the curve.</li><li>**Nodes:** Shows nodes.</li><li>**Add/Rem:** Allows adding and removing of nodes. Deactivate this option to provide an ADSR envelope with a fixed number of nodes, for example.</li><li>**Sel Nod:** Allows you to select a node.</li><li>**Sustain:** Shows a sustain line. For this, a mode with sustain must be active.</li><li>**Loop:** Shows a graphical frame overlay for the loop region. For this, the Envelope mode must be switched to Loop.</li><li>**Free End:** Allows you to move the last node of a unipolar envelope away from the 0-line.</li></ul>|
|**Env Value**|Exported to the template (see template parameters above).|
|**Mode**|Exported to the template (see template parameters above).|
|**Sync**|Exported to the template (see template parameters above).|
|**Triplet**|Exported to the template (see template parameters above).|
|**SyncNote**|Connected using @syncnote variable.|
|**Fixed**|Connected using @fixed variable.|
|**Index**|Connected using @index variable.|
|**Level**|Connected using @level variable.|
|**Time**|Connected using @time variable.|
|**Beat**|Connected using @beat variable.|
|**Curve**|Connected using @curve variable.|
|**Loop Start**|Exported to the template (see template parameters above).|
|**Loop End**|Exported to the template (see template parameters above).|
|**Sustain**|Exported to the template (see template parameters above).|
**Play Pos**|Exported to the template (see template parameters above).|
|**Min X**|The minimal horizontal zoom value.|
|**Max X**|The maximum horizontal zoom value.|
|**Min Y**|The minimal vertical zoom value.|
|**Max Y**|The maximum vertical zoom value.|

#### Colors

|Poperty|Description|
|:-|:-|
|**Line**|Curve line.|
|**Fill**|Fill color of the nodes.|
|**FillSelected**|Fill color of selected nodes (only used if "Sel Node" style is active).|
|**FrameFocus**|Focused node frame.|
|**Frame**|Node frame.|
|**Hover**|Hover frame.|
|**Sustain**|Sustain line (only used if "Sustain" style is active).|
|**Synced**|Dot color of nodes that are snapped to a sync grid position (only used if Sync is active).|
|**Crosshair**|Node edit crosshair (only used if "Crosshair" style is active).|
|**Playback**|Playback position indicator.|
|**Border**|Overall border.|
|**Grid V**|Main vertical grid (only used if "Grid" style is active).|
|**Grid V2**|Additional vertical fine grid (only used if "Grid" style is active).|
|**Grid H**|Main horizontal grid (only used if "Grid" style is active).|
|**Grid H2**|Additional horizontal fine grid (only used if "Grid" style is active).|
|**Font**|Scale font.|
|**SelFrame**|Selection area frame.|
|**Loop**|Loop area.|
|**LoopFrame**|Loop area frame.|
|**Zoom**|Zoom area.|
|**ZoomFrame**|Zoom area frame.|
