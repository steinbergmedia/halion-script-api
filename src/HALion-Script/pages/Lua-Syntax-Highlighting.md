/ [HALion Developer Resource](../..//HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Getting Started](./Getting-Started.md) /

# Lua Syntax Highlighting

The following pseudo code examplifies the Lua syntax highlighting used throughout this documentation.

```lua
--single line comment
  
--[[
    block comment
--]]
  
--keywords
and       break     do        else      elseif    end
false     for       function  goto      if        in
local     nil       not       or        repeat    return
then      true      until     while
  
--strings
a = 'alo\n123"'
a = "alo\n123\""
a = '\97lo\10\04923"'
a = [[alo
123"]]
a = [==[
alo
123"]==]
  
--numbers
3     3.0     3.1416     314.16e-2     0.31416E1
0xff  0x0.1E  0xA23p-4   0X1.921FB54442D18P+1
  
--functions
print(a)
print("Hello")
print(123)
  
for k,v in ipairs(t)
    print(v)
end
```
Keywords, strings and numbers extracted from [Lua's Reference Manual, Chapter 3 - The Language](https://www.lua.org/manual/5.2/manual.html#3).