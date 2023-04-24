/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Advanced Topics](./Advanced-Topics.md) /

# Managing Script Modules

---

**On this page:**

[[_TOC_]]

**Related pages:**

* [Protecting Layers](./Protecting-Layers.md)

---

You can add your script module to the MIDI module library by saving it as a MIDI module. Script modules that have been saved as MIDI module, behave like the factory MIDI modules and can be loaded with **Create New MIDI Module**.

## Saving Modules

1. In the **Program Tree**, right-click the script module that you want to save.
1. On the submenu **MIDI Module Library**, select **Save Module...**
1. In the file dialog , enter a name for the module and click **Save**.

## Deleting Modules

1. Right-click in the **Program Tree**.
1. On the submenu **MIDI Module Library**, select **Delete Module...**
1. Select the module that you want to delete and click **Yes** to confirm.

## Protecting Modules

If you want to prevent others from viewing or changing the sources of your script module, you can protect the module with **Protect Module**.

Protecting a script module has the following effects:

* The source files for the script module cannot be edited anymore. This includes the script itself and any sources for the MacroPage of the module.
* The sections for source files and output messages will be hidden in the editor and cannot be accessed anymore.

### Using Protect Module

1. In the **Program Tree**, right-click the script module that you want to protect.
1. On the submenu **MIDI Module Library**, select **Protect Module**. At this point, you can still revert the protection with the undo command of the history.
1. To protect the script module permanently, save the module with **MIDI Module Library > Save Module...** The next time you load the module, it will be protected. Alternatively, you can save the program together with the module.

>&#10069; The protection of permanently protected modules cannot be undone. Make sure that you have an unprotected backup of the script module and its sources if you need to edit them at a later stage.