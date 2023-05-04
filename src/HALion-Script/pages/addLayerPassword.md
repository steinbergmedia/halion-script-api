/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# addLayerPassword

>**addLayerPassword(pwd)**

## Description

Function that gives access to protected layers. By default, protected layers cannot be accessed by scripts. The parameters of a protected layer and any elements inside of it are hidden for scripts. This prevents someone unauthorized from parsing the **Program Tree** to retrieve hidden information. By calling this function with the correct password, the calling script can access the corresponding protected layers again.

>&#10069; To hide the password in addLayerPassword, you must also protect the script module. See [Managing Script Modules](./Managing-Script-Modules.md) for details.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**pwd**|The password of the protected layer(s).|string|

## Example

{{#include ./_addLayerpassword-Example.md}}

**See also:** [Protecting Layers](./Protecting-Layers.md)
