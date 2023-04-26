/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Macro Page](./HALion-Macro-Page.md) / [Templates](./Templates.md) /

# About Box

## Description

The About Box template is a template that was designed to be integrated into a macro page. It is set to the default size of a HALion Sonic macro page and it contains several control elements, such as a background bitmap, several example labels, two switches, and a menu. To understand the functionality and connections, load the HALion Basic Controls library and check the About Box template in the Templates Tree and the Popup Views variable in the GUI Tree.

For an about box to work on a macro page, a Popup List variable is required. This variable must refer to the template name of the about box. For example, the variable "Popup Views" can be used to open an about box containing an exclusive switch where the value is set to "@Popup Views" and the Onvalue is set to 1 – if the about box template is the first entry for the Popup List variable. The "Close" switch on the about box is also set to "@Popup Views" and its Onvalue is set to 0. In addition, the About Box template contains a switch and a menu that can be used to add URL links to webpages. These controls require a UI script that is attached to the About Box template. The switch opens the Steinberg homepage, the menu provides two example links. To change these links, you must edit the UI script and add new URLs.

## Template Components

### Controls and Sub Templates

|Item|Description|
|:-|:-|
|**Weblinks**|A menu to show a list of web links. The menu is connected using "@Weblink" to a script, which is attached to the About Box template. Edit the script to change the suggested links.|
|**Steinberg Website**|A switch connected to the about box script using "@Webhome". Edit the script to change the suggested link.|
|**Close**|A switch set to exclusive and Onvalue = 0. Set the Value to the same Popup List variable that is used to open the About Box.|
|**Person ... , Role ...**|Labels that can be used to mention participants of the development. All labels can be part of the background image.|
|**Background**|Background image.|
