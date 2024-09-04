/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Tutorials & Guidelines](./HALion-Tutorials-Guidelines.md) / [Getting Started](./Getting-Started.md) /

# Creating Instruments

---

**On this page:**

[[_TOC_]]

---

This page provides you with more details on how to build instruments in HALion that work in HALion Sonic, why you must export them as HALion Sonic layer preset, and why you should do the final sound design in HALion Sonic.

HALion Sonic has one compact, easy-to-use interface, as opposed to HALion, which has a much more advanced interface that is fully customizable. HALion Sonic's streamlined interface hides any parameters of HALion that are not needed for a VST workstation. Apart from the visible differences on the interface, there are also differences in the program structure between HALion Sonic and HALion. The program structure of the instrument that you build in HALion must fulfill several requirements in order to work in HALion Sonic.

## HALion Program Structure

Libraries usually contain instruments that are designed for a special purpose.

A typical instrument consists of the following:

* Several zones organized in layers.
* A macro page that gives access to the most important parameters.
* A Lua Script MIDI module and/or other MIDI modules.
* A bus and insert effects.

The program structure of your instrument in the **Program Tree** of HALion might look as simple as this:

![HALion Program Structure](../images/HALion-Program-Structure.png)

## HALion Sonic Requirements

The program structure of your instrument must fulfill the following requirements to work in HALion Sonic:

* The macro page must be attached to the top element in the **Program Tree**. In the example above, this would be the element Instrument. HALion Sonic cannot access the macro page if it is not attached to the top element.

{{#include _Maximum-Macro-Page-Size.md}}

* The voice management of the top element in the **Program Tree** must be activated. In the example above, the top element would be the element Instrument. The Polyphony setting for each Layer on HALion Sonic's **Program** tab won't work if the voice management isn't activated.

>&#10069; When activating the voice management, the Polyphony and Key Polyphony should be set to values that match your instrument. The following values have proven to be useful for many instruments: Polyphony = 16 and Key Polyphony = 4. 

* The last element in the **Program Tree** must be one bus with a maximum of four insert effects. In the example above, this would be the element Instrument-Bus. There must be only one bus at the top level. Several busses at the top level are not allowed. The maximum number of insert effects per Layer in HALion Sonic is limited to four. The insert effects are optional. In the example above, the Instrument-Bus does not have any insert effects. In fact, it is good practice to leave the bus empty in HALion and assign the insert effects later on the Inserts tab in HALion Sonic.

>&#10069; HALion Sonic does not accept layer presets that do not match the requirements. When exporting a program as HALion Sonic layer preset, please activate **Verify HALion Sonic Layer Structure**. By activating this option, HALion will warn you if the program structure does not meet the requirements. 

The following elements can be added freely to the program structure:

* You can add as many sublayers and zones as you want.
* You can place MIDI modules below the top element or inside of sublayers as needed.
* You can add additional busses with insert effects inside of sublayers. These effects become an integral part of your instrument. To adjust the effect, you must add controls on the macro page and connect them to the effect parameters.

The following picture shows the instrument from the previous example, with an additional bus and insert effect.

![Program Structure with Effect](../images/HALion-Program-Structure-with-Effect.png)

If you follow these guidelines, your instrument will be compatible with HALion Sonic:

* Except for the topmost and the last element in the **Program Tree**, the program structure can be set up as needed for your instrument.
* Inside the "Instrument" element, you are free to add any element you want.
* You must set up a macro page that provides access to the important parameters. The macro page must be attached to the topmost element.
* The "Instrument-Bus" is already part of the HALion Sonic program structure. You can assign up to four insert effects to it.

## HALion Sonic Program Structure

When you design your instrument in HALion, it is created as a program and saved as VST3 program preset. The final sound design is usually done in HALion Sonic. However, before you can load your instrument in HALion Sonic, you must export it as HALion Sonic layer preset. The export in HALion Sonic format allows you to load and test your instrument in HALion Sonic.

To export the program as HALion Sonic layer preset:

1. In HALion in the **Program Tree**, right-click the top-most element and select **Import/Export > Export Program as VST3 Preset...**

![Export HS Layer Preset](../images/Export-HS-Layer-Preset.png)

2. Choose a location and a file name.
2. Activate the options **Export as HALion Sonic Layer** and **Verify HALion Sonic Layer Structure**.
2. Finally, click **OK**.

![Export HS Layer Preset Dialog](../images/Export-HS-Layer-Preset-Dialog.png)

The layout of HALion Sonic's interface and features requires specific MIDI modules and busses. When you load a layer preset in HALion Sonic, any missing MIDI modules, busses, etc. that are required for HALion Sonic to operate are automatically added. For example, if the Instrument-Bus was missing in the example above, HALion Sonic would add this bus when loading the layer preset, because it is needed for the Inserts tab in HALion Sonic.

The following image shows the program structure of the example instrument after these steps:

* In HALion, export the instrument with **Export Program as VST3 Preset...**
* Load the exported Layer in HALion Sonic and save it as program preset.
* Load this program preset in HALion.

![Internal HS Program Structure](../images/Internal-HS-Program-Structure.png)

The Trigger Pads, two FlexPhrasers and a Program-Bus were added, because HALion Sonic requires them.

>&#10069; If you load a program preset from HALion Sonic in HALion, do not export the program preset as HALion Sonic layer preset again. If you do so and load this preset in HALion Sonic, the MIDI modules will be added again and the preset will not be compatible anymore. You must use **HALion Sonic Edit Mode** instead. See [Using HS Edit Mode](#using-halion-sonic-edit-mode) for details.

Once your instrument is set up, the final sound design can start.

## Final Sound Design

The exported HALion Sonic layer preset usually serves as your init preset for the final sound design in HALion Sonic.

Finalizing sound design in HALion Sonic has the following advantages:

* The required elements are added automatically.
* You have access to the **Program** tab, which allows you to combine up to four instruments, for example.
* You have access to the **Inserts** tab, which allows you to assign insert effects to the layers and the program.
* Additional parameters from HALion are hidden and cannot be adjusted by mistake.

After the sound design, you can save your final sound as HALion Sonic program preset. In this step, you should tag your presets in the **MediaBay**. See the [MediaBay Guideline](./MediaBay-Guideline.md) for more details.

It is recommended to save your sounds as program presets rather than HALion Sonic layer presets, because Steinberg users mainly use the **Program** filter when browsing for presets in the **MediaBay**.

Finally, in HALion's **Library Creator**, add your presets to a VST Sound and choose to build your HALion Sonic library.

## Correcting Settings

To correct settings in your instrument, choose one of the two following ways:

### Using Export Program as VST3 Preset...

If you need to correct settings in the phase of testing your instrument in HALion Sonic and if you have not performed any serious sound design or saved further presets yet:

1. Go back to the original HALion program preset of your instrument.
1. Correct the settings as required and your modifications to the original HALion program preset.
1. Export the instrument again as HALion Sonic layer preset.

### Using HALion Sonic Edit Mode

If you need to correct settings in the phase of sound design and you already created HALion Sonic program presets:

1. Load the HALion Sonic program preset of your instrument. **HALion Sonic Edit Mode** will be activated. This ensures that you cannot accidentally change the program structure that is required by HALion Sonic.

>&#10069; Do not deactivate **HALion Sonic Edit Mode**, it cannot be activated manually.

2. Correct the settings as required and save the program preset. If **HALion Sonic Edit Mode** is active, the preset will be saved in the HALion Sonic preset format.

**HALion Sonic Edit Mode** can be switched off permanently with the corresponding setting on the **Options** page. When loading HALion Sonic program presets, **HALion Sonic Edit Mode** will only be activated if the setting on the **Options** page is activated. See [HALion Sonic Edit Mode](https://steinberg.help/halion/v7/en/halion/topics/global_functions_and_settings/options_editor_edit_section_r.html) for details.