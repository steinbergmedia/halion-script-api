/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Getting Started](./Getting-Started.md) /

# What is HALion Script?

---

**On this page:**

[[_TOC_]]

---

HALion Script allows you to customize and expand the features of HALion to a great extent. It is a domain-specific programming language based on the Lua scripting language. It comes with many functions tailored to HALion, while maintaining the general programmability of Lua. HALion Script allows you to manipulate musical events, access and modify parameters of HALion, control the behavior of macro pages, and much more. All of this can enhance your instrument creations greatly.

**Fields of application:**

* Arpeggiation and sequencing
* Chord generation and recognition
* Microtonal music and alternative scales
* Algorithmic composition
* Advanced, interactive playback for creating more realistic performances
* Custom-built workflows for macro pages
* Automization of repeating tasks while building large scale libraries

[Jump to Top ](#what-is-halion-script)

## Lua Resources

Lua is a widespread scripting language, used in many professional fields, such as game development or image processing, for example. To find out more about Lua, please visit [lua.org](https://lua.org). For learning Lua, we recommend the official book [Programming in Lua](https://www.lua.org/pil/) and [Lua's Reference Manual](https://www.lua.org/manual/5.2/).

[Jump to Top ](#what-is-halion-script)

## Lua Release
HALion Script uses [Lua 5.2.3](https://www.lua.org/manual/5.2/) with the following standard libraries:

* [basic library](https://www.lua.org/manual/5.2/manual.html#6.1)
* [package library](https://www.lua.org/manual/5.2/manual.html#6.3)
* [string manipulation](https://www.lua.org/manual/5.2/manual.html#6.4)
* [table manipulation](https://www.lua.org/manual/5.2/manual.html#6.5)
* [mathematical functions](https://www.lua.org/manual/5.2/manual.html#6.6)
* [bitwise operations](https://www.lua.org/manual/5.2/manual.html#6.7)
* [debug facilities](https://www.lua.org/manual/5.2/manual.html#6.10)

> The standard libraries [coroutine](https://www.lua.org/manual/5.2/manual.html#6.2), [io](https://www.lua.org/manual/5.2/manual.html#6.8) and [os](https://www.lua.org/manual/5.2/manual.html#6.9) are not supported.

{{#include ./_HALion-Script-Reference.md}}

[Jump to Top ](#what-is-halion-script)