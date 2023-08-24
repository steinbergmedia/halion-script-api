/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Tutorials & Guidelines](./HALion-Tutorials-Guidelines.md) / [How-tos](./How-tos.md) /

# Modifying SVGs with Multiple Objects

---

**On this page:**

[[_TOC_]]

---

If an SVG contains more than one object, their properties can also be changed.

1. Click the + button in the Objects line to add another object
1. Set the ID of the second object.
1. Set the properties of the object.

The example below demonstrates how to build a checkbox. {{#include ./_Excerpts.md:single-example}}

## Prerequisites.

* A program with a macro page.

## Creating a Checkbox Control

1. Create an SVG file, for example in Affinity Designer.

![Modifying SVGs with Multiple Objects Checkbox](../images/Modifying-SVGs-with-Multiple-Objects-Checkbox.png)

1. Add two circles and name them 'Back' for the background of the checkbox and 'Check' for the dot that indicates the checked state.

If you open the SVG file in a text editor this might look similar to this:

![Modifying SVGs with Multiple Objects Text Editor](../images/Modifying-SVGs-with-Multiple-Objects-Text-Editor.png)

1. Add an SVG resource in the **Resources Tree** and set the Path to the SVG file.

In this example, the added SVG resource is named 'SVG original' and looks like it was designed in Affinity Designer.

To create the two states of the checkbox:

1. Duplicate the [SVG](../../HALion-Macro-Page/pages/SVG.md) resource two times and name them 'SVG Checkbox Off' and 'SVG Checkbox On'.
1. In the SVG Checkbox Off resource, adapt the look to your liking. In this example, Back is set to ``fill`` and ``orange`` and Check is set to ``fill`` and ``rgba (0,0,0,0.4)`` which is black with an opacity of 40%.

![Modifying SVGs with Multiple Objects Off](../images/Modifying-SVGs-with-Multiple-Objects-Off.png)

1. In the SVG Checkbox On resource, set the ``fill`` property of the Check circle to ``black``.

![Modifying SVGs with Multiple Objects On](../images/Modifying-SVGs-with-Multiple-Objects-On.png)

Now, you have two resources that can be used for the On and Off [Bitmap](../../HALion-Macro-Page/pages/Bitmap.md) resources of a switch.
Of course, you can derive other variants to implement additional hover state resources, for example.
