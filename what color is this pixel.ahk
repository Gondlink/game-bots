p::

CoordMode, Mouse, Screen
SetTimer, Check, 20
return

Check:
MouseGetPos, xx, yy
PixelGetColor, collor, %xx%, %yy%
Tooltip %collor%
return

Esc::
ExitApp
Return