/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Tutorials & Guidelines](./HALion-Tutorials-Guidelines.md) / [How-tos](./How-tos.md) /

# Creating a Template List

---

**On this page:**

[[_TOC_]]

---

This tutortial describes the creation of a template list step by step. The following preset already contains the ready solution. For better understanding, it is recommended to try the steps described below by yourself.

## Example VST Preset

* [Creating a Template List.vstpreset](../vstpresets/Creating%20a%20Template%20List.vstpreset)

## Prerequisites

1. Create a program with a synth zone.
1. Open the **Macro Page Designer** and click **Create New Macro Page/Library**.

## Overview of Workflows

* Add a [Template List](../../HALion-Macro-Page/pages/Template-List.md) control.
* Create a template for the entries of the list.
* Add controls to the template and export the desired values as template parameters.
* Create variables for the desired entries in the list and connect them to the corresponding template parameters.

## Step-by-Step Guide

1. In the **Macro Page Designer**, go to the **GUI Tree** and create a [Template List](../../HALion-Macro-Page/pages/Template-List.md). Name it 'BasicList', for example.
1. Go to the **Templates Tree** and create a [Template](../../HALion-Macro-Page/pages/Template.md). Name it 'RowEntry', for example.
1. Click **Edit Element** ![Edit Element](../images/EditElement.PNG) to open the template.
1. Add a [Text](../../HALion-Macro-Page/pages/Text.md) and a [Decor](../../HALion-Macro-Page/pages/Decor-Control.md) control.
1. The look of an entry is defined by the properties of the controls inside the template. Adjust the size and other properties of the controls as desired.
1. Export the Value property of the [Text](../../HALion-Macro-Page/pages/Text.md) control. This exported value becomes a template parameter of the 'BasicList' template list.
1. Close the template and go back to the to the **GUI Tree**. Select the 'BasicList' item, got to the **Properties** and set Template to 'RowEntry'.
1. Create a Variables folder, then right-click it and  create a 'String List' variable. Name it 'Rows', for example.
1. Select the String List variable, go to the **Properties** and create entries for each row you want to display, e.g., 'Row 1', 'Row 2', 'Row 3', and so on.
1. Select the 'BasicList' item, got to the **Properties** and set the value under Template Parameter to '@Rows'. The rows you defined in step 9 should now display with the look you defined in step 5.
1. Adjust the position and size of the 'BasicList' template list, if needed.