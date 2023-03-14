/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /

# getElement

>**getElement()**

## Description

Function to obtain the [Element](./Element.md) object of an element that has a macro page. If you call this function in the [UI script](./Working-with-UI-Scripts.md) of a macro page, the [Element](./Element.md) object of the element to which the macro page is attached will be returned. Depending on the element, the returned object can be of the type program, layer, or MIDI module, for example.

>This function can only be called in an [UI script](./Working-with-UI-Scripts.md).

**Available in:** UI.

## Return Values

Returns the [Element](./Element.md) object of the element to which the macro page is attached.

## Example

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