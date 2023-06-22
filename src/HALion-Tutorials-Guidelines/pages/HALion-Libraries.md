# HALion Libraries

---

**On this page:**

[[_TOC_]]

---

HALion allows you to create your own libraries and distribute them as VST Sound files. VST Sound is a Steinberg file format that can be compared to ZIP or ISO files, for example. It contains a file structure with folders and files. The **Library Manager** allows you to manage the VST Sound files of a library on your computer and to register them to the **MediaBay**. Once a VST Sound file is registered in the **MediaBay**, it is mounted, and all compatible Steinberg products can access the folders and files within it. For more details regarding the **Library Manager**,  see [steinberg.help / VST Manuals / Library Manager](https://steinberg.help/vst-manuals/library-manager/).

HALion libraries incorporate many source files, such as presets, samples, macro pages, MIDI modules, scripts, and sub presets. The **Library Creator** allows you to write VST Sound files that contain all the necessary source files of a library. A library can be created as a single VST Sound file or as a combination of VST Sound files. For example, you might want to put the presets into one VST Sound file and the samples into another. For more details on using the **Library Creator**, see [steinberg.help / HALion 6 / Library Creator](https://steinberg.help/halion/v6/en/halion/topics/library_creator/library_creator_c.html).

## Defining Your Target Users

The HALion family consists of the plug-ins HALion, HALion Sonic and HALion Sonic SE. HALion allows you to create libraries for all these plug-ins.

Before you create a library, you must decide who your target users or customers are and in which plug-in you want the library to work. Please note the following:

* HALion Sonic and HALion Sonic SE have restrictions regarding the program structure. The number of instrument layers is limited to four and certain MIDI modules are always needed. HALion does not have these restrictions.
* HALion Sonic SE libraries are compatible with HALion Sonic and HALion. HALion Sonic libraries are compatible with HALion. HALion libraries are only compatible with HALion.

You could build a library that only HALion users can use, which gives you the freedom to build a program with a different structure, for example. However, this limits the number of potential users.

Most often, you will probably want to build your library so that it works with HALion Sonic SE, which means that it can be used by everybody. HALion Sonic SE is freely available for download on the Steinberg website.

|Plug-in|Description|Compatibility|
|:-|:-|:-|
|HALion|HALion libraries have no restrictions.|HALion|
|HALion Sonic|HALion Sonic libraries have restrictions regarding the program structure. The number of instrument layers is limited to four and certain MIDI modules are always needed. See [HALionSonic (SE) Program Structure](./Creating-Instruments.md#halion-sonic-se-program-structure) for details.|HALion, HALion Sonic|
|HALion Sonic SE|HALion Sonic SE libraries have the same restrictions as HALion Sonic. Additionally, you cannot edit the settings on HALion Sonic's **Program** and **Inserts** tab. The **Program** tab gives access to the program's FlexPhraser, the key and velocity ranges of the four layers, the quick control assignments, etc. The **Inserts** tab allows you to assign insert effects to the four layers and the program.|HALion, HALion Sonic, HALion Sonic SE|

{{#include _Maximum-Macro-Page-Size.md}}

## Library Creation Process

### Library Creation Workflow

To build a library that works in HALion Sonic SE, proceed as follows:

1. **Build the instrument in HALion.** In this step, you add sublayers and samples, adjust the mapping, write scripts, build the macro page, etc. When creating the macro page, you must select **Create HALion Sonic Macro Page**. This creates a canvas with the correct size for the HALion Sonic (SE) macro page. While working in HALion, the instrument is saved as Program preset.
1. **Export the instrument/program as HALion Sonic SE Layer preset.** This step makes it possible to load the instrument you created in HALion as a Layer in HALion Sonic.
1. **Load the exported Layer in HALion Sonic.** In this step, you should test your instrument thoroughly. If you find issues, you need to go back to the original HALion Program preset from step 1 and correct whatever you found. Then, you must export the instrument again as HALion Sonic SE Layer preset, load it in HALion Sonic, test it, etc. This is an iterative process. Once your instrument is set up correctly and works the way you want it, you can move on to the next step.
1. **Load the Layer in HALion Sonic and do the sound design.** In this step, you tweak parameters on the macro page, add effects on the **Inserts** tab, assign quick controls, etc. You can even load more than one layer of your instrument and adjust the parameters on the **Program** tab. The macro pages of the Layers can be accessed in HALion Sonic SE via the L1 to L4 tabs. The **Program** and **Inserts** tabs are not available in HALion Sonic SE and the user cannot change the settings you make here. It is important to keep this in mind when modifying these settings.
1. **Save the sound as HALion Sonic Program.** In this step, you should set the MediaBay tags.
1. **In the Library Creator, build your VST Sound file(s) as HALion Sonic SE library.** The Library Creator converts all HALion Sonic presets to HALion Sonic SE presets and all the necessary source files of the library are written into the VST Sound files.

Regarding the steps above, designing a library can be divided into three phases:

|Phase|Description|
|:-|:-|
|I.|The main part of the work usually happens in step 1.|
|II.|Steps 2 through 5 are mainly testing and sound design.|
|III.|Step 6 is the final step, just before the release.|

### Library Creation Flowchart

This flowchart shows the complete library creation process from start to end.

![Library Creation Process](../images/Library-Creation-Process.png)