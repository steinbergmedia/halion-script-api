/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Advanced Topics](./Advanced-Topics.md) /

# Protecting Layers

---

**On this page:**

[[_TOC_]]

**Related pages:**

* [addLayerPassword](./addLayerPassword.md)
* [Managing Script Modules](./Managing-Script-Modules.md)

---


You might want to avoid that users make edits to critical parts of the program. Moreover, how you built the program for your instrument might be a considerable part of your intellectual property. To safeguard the program and your work, you can protect the layers which the users should not have access to.

## Using Layer Protection

Protecting layers is a two-step process:

* First, you define the layers you want to protect by setting the **Layer Protection** in the **Program Tree**. This has the advantage that you can decide at an early stage which layers you want to be protected. You can continue work as normal and you still can add or remove the protection as needed. The permanent activation of the layer protection happens later.
* Before you release the instrument to the public, you export the program and apply the protection with **Export Program as Protected VST3 Preset...** All layers with the layer protection set will be permanently protected in the exported program.

>&#10069; Applying the layer protection permanently by exporting a protected VST3 preset cannot be undone. For this reason, you should always keep a backup of the unprotected program.

### Setting the Layer Protection

1. In the **Program Tree**, right-click the column header and select **Layer Protection**. The column for setting the layer protection is added to the **Program Tree**. An open lock is displayed next to each layer, indicating that the layers are not protected yet.
1. Click the lock icon on the layer you want to protect. A dialog opens for entering the password for the layer protection.
1. Enter a password in the text field. You must enter a password each time you protect a layer. You are free to use the same or different passwords for each of the layers.
1. Click **OK** to engage the layer protection.

The layer protection is engaged if the lock next to the layer is closed. If a child layer is protected through a parent layer, its lock will turn light grey to indicate this. To disengage the layer protection, click the lock of this layer to reopen it. This resets the password of the layer. To apply the layer protection permanently, you must export a protected version of the program.

### Applying the Layer protection

>&#10069; Applying the layer protection cannot be undone. Please keep a backup of the unprotected program if you need to edit the layers at a later stage.

1. Right-click in the **Program Tree** and go to the **Import/Export** submenu.
1. Select **Export Program as Protected VST3 Preset...**
1. In the file dialog, choose a location and file name.
1. Click **Save** to export the program and apply the layer protection permanently. Click **Cancel** to close the dialog without exporting the program and applying the layer protection.

When you load the exported program, the protected layers cannot be accessed anymore in the **Program Tree**.

## Accessing Protected Layers from a Script

By default, protected layers cannot be accessed by scripts. The parameters of a protected layer and any elements inside of it are hidden for scripts. This avoids unauthorized parsing of the **Program Tree** to retrieve hidden information. A script can access protected layers only by calling the function **addLayerPassword** with the correct password for the corresponding layers.

#### Example

{{#include ./_addLayerPassword-Example.md}}

>&#10069; To hide the password in [addLayerPassword](./addLayerPassword.md), you must also protect the script module. See [Managing Script Modules](./Managing-Script-Modules.md) for details.
