/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# messageBox

>**messageBox(stringOrConfigTable)**

## Description

Function to open a modal message box. If the argument is a single string, the text will be displayed in the default message box. Alternatively, you can customize the message box by using a configuration table, e.g., if you want to display the text with a warning icon.

**Available in:** Controller.

## Arguments

|Argument|Description|Value Type|
|:-|:-|:-|
|**stringOrConfigTable**|The message as a string or the configuration table that customizes the message box.|string or table|

## Configuration Table

The message box can be configured by creating a table with the following fields:

|Field|Description|Value Type|
|:-|:-|:-|
|**.type**|The type of the message box defines which icon will be displayed. It can be determined via names or indices. The default is ``MessageBoxType.information``.|enum or number|
|**.text**|The text that will be displayed.|string|
|**.button1**|This button is always displayed. The default string is "OK".|string, optional|
|**.button2**|This button will only be displayed if you assign a string to this field.|string, optional|
|**.button3**|This button will only be displayed if you assign a string to this field.|string, optional|

## Return Values

Returns the result of the message box, i.e., which action closed the message box, as a number.

## Message Box Types

Enumerator to identify the types of the message box. The type of the message box also defines which icon will be displayed.

|Index|Name|
|:-|:-|
|1|MessageBoxType.warning|
|2|MessageBoxType.question|
|3|MessageBoxType.information|

## Message Box Results

Enumerator to identify the results of the message box.

|Index|Name|
|:-|:-|
|1|MessageBoxResult.escape|
|2|MessageBoxResult.button1|
|3|MessageBoxResult.button2|
|4|MessageBoxResult.button3|

## Example

```lua
-- Customized message box.
myMessage = {}
  
myMessage.type = MessageBoxType.question
myMessage.text = "Click the button with the correct answer!\n1 + 1 = ?"
myMessage.button1 = "1"
myMessage.button2 = "2"
myMessage.button3 = "3"
  
repeat
    result = messageBox(myMessage)
until result == MessageBoxResult.button2 or result == MessageBoxResult.escape
```