/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Advanced Topics](./Advanced-Topics.md) /

# Working with Objects

---

**On this page:**

[[_TOC_]]

---

In the HALion Script language, the elements that make up the program, MIDI and note expression events, the definitions of parameters, etc., are all represented by *objects*. HALion Script provides dedicated functions for modifying these objects. To understand the principles of writing scripts that operate on objects, some terminology from object-oriented programming will be helpful.

## Objects and Classes

Object-oriented programming (OOP) is a style of programming based on the concept of objects. In OOP objects are organized in classes. A class provides data fields and methods for an object. The data fields describe what the object is and the methods describe what it can do. A concrete occurance of an object is called an instance. The elements in the **Program Tree** are instances of different types of objects, for example, [Bus](./Bus.md) objects, [Layer](./Layer.md) objects,  [Zone](./Zone.md) objects, etc. MIDI and note expression events are represented by [Event](./Event.md) objects and each parameter has a [ParameterDefinition](./getParameterDefinition.md) object.

## Class Reference

The classes/objects of the HALion Script language are structured in the following class hierarchy.

#### HALion Script Class Hierarchy

{{#include ./_Class-Hierarchy.md}}

Classes deeper down inherit the data fields and methods of classes higher up in the class hierarchy. For example, the classes [Bus](./Bus-Constructor.md), [Instance](./Instance.md), [Layer](./Layer.md), [Effect](./Effect.md), and so on, inherit all data fields and methods of the [Element](./Element.md) class. Subclasses add functionality to their parent class by providing more data fields and methods.

## Addressing Objects
The Lua Script MIDI module itself can be addressed with ``this``. Further objects can be addressed with ``this.parent``, ``this.program`` or with the respective get and find functions.

|Syntax|Object|Class|
|:-|:-|:-|
|this|Returns the object of the script module itself.|[MidiModule](./MidiModule.md)|
|this.parent|Returns the object of the parent element, which can be a Layer or the Program.|[Layer](./Layer.md) or [Program](./Program.md)|
|this.program|Returns the object of the Program.|[Program](./Program.md)|

After addressing an object, you can read its fields through dot-notation. In the following example, the name and the type of different objects are printed with ``.name`` and ``.type``.

#### Example 1

```lua
-- Print the name and type of different objects.

print(this.name, this.type)
print(this.parent.name, this.parent.type)
print(this.program.name, this.program.type)
print(this.program:getChild().name, this.program:getChild().type)
```

## Calling Methods

To operate on an element in the **Program Tree**, you must first adress its object and then call the desired method. The basic syntax is as follows:

>**object:method()**

#### Example 2

```lua
-- Get the object of the first Zone after the script module.

zone = this.parent:getZone()

-- setName operates on the Zone object.

zone:setName("MyZone")
```

## Using type() on Objects

For the HALion Script language the type() function of Lua has been extended to return the type of an object.

#### Example 3

```lua
-- Print the name of all zones in the program.

elements = this.program:findChildren(true)

for i, element in ipairs(elements) do
    if type(element) == "Zone" then
        print(element.name)
    end
end
```