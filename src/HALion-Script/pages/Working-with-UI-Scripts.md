/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Advanced Topics](./Advanced-Topics.md) /

# Working with UI Scripts

---

**On this page:**

[[_TOC_]]

**Related pages:**

* [steinberg.help / MIDI Modules Reference / Lua Script](https://steinberg.help/halion/v6/en/halion/topics/midi_modules/lua_script_c.html)

---

HALion offers two types of scripts:

|Type|Fields of Application
|:-|:-|
|MIDI module scripts|Process MIDI events, set parameters, etc.|
|UI scripts|Switching logic for pages and disable views, translation of parameter values to display strings, etc.|

UI scripts have the following restrictions:

* UI scripts are only executed when the UI is open. If the UI is closed, the UI script is not executed anymore.
* The parameters defined in a UI script cannot be automated.

>&#10069; MIDI module scripts do not have these restrictions. Therefore, be sure to check if UI scripts are required for a specific task, and if not, use MIDI module scripts instead.

## Executing UI Scripts

You can execute UI scripts for the macro page and even for each template. The **Script** section can be found in the **Properties** section in the lower left of the **Macro Page Designer**. Just as with the Lua Script MIDI Module, you can write your scripts with the internal editor or an external editor. See [steinberg.help / MIDI Modules Reference / Lua Script](https://steinberg.help/halion/v6/en/halion/topics/midi_modules/lua_script_c.html) for more details.

1. In the **GUI Tree** of the **Macro Page Designer**, select the element that has the macro page attached. Alternatively, select a control element, then go to the **Show Templates** tab and click **Edit Element**.
1. In the **Properties** section in the lower left of the **Macro Page Designer**, go to the **Script** section.
1. Click **Edit Script** to open the internal **Script Editor**, then enter your script and press **OK**. Alternatively, click **Load Script** and select a script file from disk.

### Show/Hide Output Messages

The **Output Messages** section for the UI scripts is hidden by default.

* In the toolbar of the **Macro Page Designer**, click **Show/Hide Script Output Messages** ![Show/Hide Script Output Messages](../images/Show-Hide-Script-Output-Messages.PNG) to show or hide the **Output Messages** below the **Resource / Library Browser**.

The **Output Messages** section displays the messages of all UI scripts. The UI script the message belongs to is indicated by a prefix.

## Adressing the Elements of the Program

A UI script cannot address the elements of a program directly. To address a program and its elements from the UI script, you must use [getElement](./getElement.md).

#### Example

```lua
-- Must be executed as UI script!
-- Print the name and type of the element that has the macro page attached.

element = getElement()
print(element.name, element.type)

-- Print the name and type of the parent element.

if element.parent then
    print(element.parent.name, element.parent.type)
end
```
