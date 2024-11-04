/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Diving Deeper](./Diving-Deeper.md) /

# Protecting Layers

---

**On this page:**

[[_TOC_]]

**Related pages:**

* [addLayerPassword](./addLayerPassword.md)
* [Managing Script Modules](./Managing-Script-Modules.md)

---


You might want to avoid that users make edits to critical parts of the program. Moreover, how you built a program for your instrument might be a considerable part of your intellectual property. To safeguard the program and your work, you can protect the layers to which the users should not have access.

## Using Layer Protection

Protecting layers is a two-step process:

* First, you define the layers you want to protect by setting the **Layer Protection** in the **Program Tree**. This has the advantage that you can decide at an early stage which layers you want to be protected. You can continue your work as usual and you still can add or remove the protection as needed. The permanent activation of the layer protection happens later.
* Before you release the instrument to the public, you export the program and apply the protection by using **Export Program as VST3 Preset...** with the **Protect** option activated. All layers for which the layer protection is set will be permanently protected in the exported program.

>&#10069; Applying the layer protection permanently by exporting a protected VST 3 preset cannot be undone. For this reason, you should always keep a backup of the unprotected program.

### Setting the Layer Protection

1. In the **Program Tree**, right-click the column header and select **Layer Protection**. The column for setting the layer protection is added to the **Program Tree**. An open lock icon is displayed next to each layer, indicating that the layers are not protected yet.
1. Click the lock icon for the layer that you want to protect. A dialog opens where you can enter the password for the layer protection.
1. Enter a password in the text field. You must enter a password each time you protect a layer. You are free to use the same or different passwords for each of the layers.
1. Click **OK** to engage the layer protection.

The **Layer Protection** is engaged if a closed lock icon is displayed next to the layer. If a child layer is protected through a parent layer, its lock will turn light gray to indicate this. To disengage the **Layer Protection**, click the closed lock icon of a layer, so that an open lock icon is shown. This also resets the password of the layer. To apply the **Layer Protection** permanently, you must build a library or export a protected version of the program or layer.

### Applying the Layer Protection Automatically

The **Library Creator** protects layers with activated protection automatically when building a VST Sound. This only affects the presets that go into the VST Sound container – not your source presets on disk. Using the **Library Creator** is the preferred way to protect layers permanently for release.

1. Set the **Layer Protection** as described above.
1. In the **Library Creator**, add the respective presets to your library.
1. Build the library and mount it.
1. Go to the **MediaBay** and load a preset from the library.

Notice how the protected layers cannot be accessed in the **Program Tree** any longer.

### Applying the Layer Protection Manually

>&#10069; Applying the layer protection cannot be undone. Please keep a backup of the unprotected program if you need to edit the layers at a later stage.

1. Right-click in the **Program Tree** and go to the **Import/Export** submenu.
1. Select **Export Program as VST3 Preset...**
1. Activate the **Protect** option.
1. Choose a location and file name.
1. Click **Save** to export the program and apply the layer protection permanently.

When you load the exported program, the protected layers cannot be accessed in the **Program Tree** any longer.

## Accessing Protected Layers from a Script

By default, protected layers cannot be accessed by scripts. The parameters of a protected layer and any elements inside of it are hidden for scripts. This avoids unauthorized parsing of the **Program Tree** to retrieve hidden information. A script can access protected layers only by calling the function **addLayerPassword** with the correct password for the corresponding layers.

#### Example

{{#include ./_addLayerPassword-Example.md}}

>&#10069; To hide the password in [addLayerPassword](./addLayerPassword.md), you must also protect the script module. See [Managing Script Modules](./Managing-Script-Modules.md) for details.
