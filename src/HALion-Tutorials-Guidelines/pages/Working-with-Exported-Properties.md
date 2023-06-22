# Working with Exported Properties

---

**On this page:**

[[_TOC_]]

---

When creating universally reusable control templates, it is necessary to export all control properties that need to be accessible on the template level from the controls that are located inside the template.

All properties that can be exported have an **Export Property** button ![Export Property](../images/Export-Property.png). If this button is activated, the parameter is exported. You can  select the topmost element in the GUI tree of the template to see all exported parameters.

## Prerequisites

* A program with a macro page.

## Creating a Simple Template

1. Go to the **Macro Page Designer**.
1. Create a [Knob](../../HALion-Macro-Page/pages/Knob.md) control on the macro page and assign an animation bitmap.
1. Select the knob in the **GUI Tree** and open the context menu.
1. Select **Create template 'Knob' from 'Knob'**.
1. In the **GUI Tree**, set the name of the knob to "MyKnob".
1. Select the knob and export the **Value** property by clicking the **Export Property** button.
1. Select "MyKnob" in the **GUI Tree**.
1. Give the **Value** parameter in the Template Parameter section a meaningful name, for example, "Value".
1. Go back to the **GUI Tree** of the macro page by clicking the **Switch back to Macro Page/Parent Template** button [Switch Back to Macro Page](../images/Switch-Back-to-Macro-Page.png) in the title section of the **GUI Tree**.

**Result:** You have created a simple knob template with a **Value** parameter.

You can add further elements such as labels and text fields to the template and export their relevant parameters, too. Giving the parameters the same name will combine them on the template level. This way, you can use a single **Value** parameter and connect it both to the knob and the text control inside the template. Try out the knob templates that come with the [Basic Controls](../../HALion-Macro-Page/pages/Exploring-Templates.md#basic-controls) and [Additional Controls](../../HALion-Macro-Page/pages/Exploring-Templates.md#additional-controls) libraries.

## Connecting Template Parameters

You can connect template parameters like parameters of standard controls. There are multiple ways you can do this:

* Drag and drop an engine or script parameter from the parameter list to the template parameter.
* Open the context menu on a HALion control and select **Connect to Macro Page**, then do the same for the template and select **Connect to Parameter '...'** or open the context menu on the Value property and select **Connect to Parameter '...'**.
* Type in ``@example`` to connect the template to a script parameter or a UI variable of that name.
* Type in a path to layers, zones, busses, etc., for example, ``@type:zone/@id:nn``

## Changing the Template While It Is Connected

You can exchange the used template at any time, even if it has already been connected. For this, change the template reference in the **Template Parameter** section in the **Properties** view.

* If the newly assigned template shares the same parameters, the connections remain intact.
* If the new template does not use the same parameters, a warning message is shown. You can delete the obsolete connections or keep them.

Keeping the connections is useful if you want to switch back to the previous template at a later stage. In this case, all connections are automatically re-established. This is particularly useful if you are working with dynamic template references, because in this case, you want to keep exported parameters and their connections even when the template is temporarily not used.
