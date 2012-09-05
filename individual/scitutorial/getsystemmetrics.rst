


getsystemmetrics
================

Retrieves the specified system metric or system configuration setting
(Windows only)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = getsystemmetrics(key)




Arguments
~~~~~~~~~

:res a value (integer)
: :key a string (see below)
:



Description
~~~~~~~~~~~

Retrieves the specified system metric or system configuration setting.
SM_ARRANGE The flags that specify how the system arranged minimized
windows. For more information, see the Remarks section in this topic.
SM_CLEANBOOT The value that specifies how the system is started: 0
Normal boot 1 Fail-safe boot 2 Fail-safe with network boot A fail-safe
boot (also called SafeBoot, Safe Mode, or Clean Boot) bypasses the
user startup files. SM_CMONITORS The number of display monitors on a
desktop. For more information, see the Remarks section in this topic.
SM_CMOUSEBUTTONS The number of buttons on a mouse, or zero if no mouse
is installed. SM_CXBORDER The width of a window border, in pixels.
This is equivalent to the SM_CXEDGE value for windows with the 3-D
look. SM_CXCURSOR The width of a cursor, in pixels. The system cannot
create cursors of other sizes. SM_CXDLGFRAME This value is the same as
SM_CXFIXEDFRAME. SM_CXDOUBLECLK The width of the rectangle around the
location of a first click in a double-click sequence, in pixels. The
second click must occur within the rectangle that is defined by
SM_CXDOUBLECLK and SM_CYDOUBLECLK for the system to consider the two
clicks a double-click. The two clicks must also occur within a
specified time. To set the width of the double-click rectangle, call
SystemParametersInfo with SPI_SETDOUBLECLKWIDTH. SM_CXDRAG The number
of pixels on either side of a mouse-down point that the mouse pointer
can move before a drag operation begins. This allows the user to click
and release the mouse button easily without unintentionally starting a
drag operation. If this value is negative, it is subtracted from the
left of the mouse-down point and added to the right of it. SM_CXEDGE
The width of a 3-D border, in pixels. This metric is the 3-D
counterpart of SM_CXBORDER. SM_CXFIXEDFRAME The thickness of the frame
around the perimeter of a window that has a caption but is not
sizable, in pixels. SM_CXFIXEDFRAME is the height of the horizontal
border, and SM_CYFIXEDFRAME is the width of the vertical border. This
value is the same as SM_CXDLGFRAME. SM_CXFOCUSBORDER The width of the
left and right edges of the focus rectangle that the DrawFocusRect
draws. This value is in pixels. SM_CXFRAME This value is the same as
SM_CXSIZEFRAME. SM_CXFULLSCREEN The width of the client area for a
full-screen window on the primary display monitor, in pixels. To get
the coordinates of the portion of the screen that is not obscured by
the system taskbar or by application desktop toolbars, call the
SystemParametersInfo function with the SPI_GETWORKAREA value.
SM_CXHSCROLL The width of the arrow bitmap on a horizontal scroll bar,
in pixels. SM_CXHTHUMB The width of the thumb box in a horizontal
scroll bar, in pixels. SM_CXICON The default width of an icon, in
pixels. The LoadIcon function can load only icons with the dimensions
that SM_CXICON and SM_CYICON specifies. SM_CXICONSPACING The width of
a grid cell for items in large icon view, in pixels. Each item fits
into a rectangle of size SM_CXICONSPACING by SM_CYICONSPACING when
arranged. This value is always greater than or equal to SM_CXICON.
SM_CXMAXIMIZED The default width, in pixels, of a maximized top-level
window on the primary display monitor. SM_CXMAXTRACK The default
maximum width of a window that has a caption and sizing borders, in
pixels. This metric refers to the entire desktop. The user cannot drag
the window frame to a size larger than these dimensions. A window can
override this value by processing the WM_GETMINMAXINFO message.
SM_CXMENUCHECK The width of the default menu check-mark bitmap, in
pixels. SM_CXMENUSIZE The width of menu bar buttons, such as the child
window close button that is used in the multiple document interface,
in pixels. SM_CXMIN The minimum width of a window, in pixels.
SM_CXMINIMIZED The width of a minimized window, in pixels.
SM_CXMINSPACING The width of a grid cell for a minimized window, in
pixels. Each minimized window fits into a rectangle this size when
arranged. This value is always greater than or equal to
SM_CXMINIMIZED. SM_CXMINTRACK The minimum tracking width of a window,
in pixels. The user cannot drag the window frame to a size smaller
than these dimensions. A window can override this value by processing
the WM_GETMINMAXINFO message. SM_CXPADDEDBORDER The amount of border
padding for captioned windows, in pixels. SM_CXSCREEN The width of the
screen of the primary display monitor, in pixels. This is the same
value obtained by calling GetDeviceCaps as follows: GetDeviceCaps(
hdcPrimaryMonitor, HORZRES). SM_CXSIZE The width of a button in a
window caption or title bar, in pixels. SM_CXSIZEFRAME The thickness
of the sizing border around the perimeter of a window that can be
resized, in pixels. SM_CXSIZEFRAME is the width of the horizontal
border, and SM_CYSIZEFRAME is the height of the vertical border. This
value is the same as SM_CXFRAME. SM_CXSMICON The recommended width of
a small icon, in pixels. Small icons typically appear in window
captions and in small icon view. SM_CXSMSIZE The width of small
caption buttons, in pixels. SM_CXVIRTUALSCREEN The width of the
virtual screen, in pixels. The virtual screen is the bounding
rectangle of all display monitors. The SM_XVIRTUALSCREEN metric is the
coordinates for the left side of the virtual screen. SM_CXVSCROLL The
width of a vertical scroll bar, in pixels. SM_CYBORDER The height of a
window border, in pixels. This is equivalent to the SM_CYEDGE value
for windows with the 3-D look. SM_CYCAPTION The height of a caption
area, in pixels. SM_CYCURSOR The height of a cursor, in pixels. The
system cannot create cursors of other sizes. SM_CYDLGFRAME This value
is the same as SM_CYFIXEDFRAME. SM_CYDOUBLECLK The height of the
rectangle around the location of a first click in a double-click
sequence, in pixels. The second click must occur within the rectangle
defined by SM_CXDOUBLECLK and SM_CYDOUBLECLK for the system to
consider the two clicks a double-click. The two clicks must also occur
within a specified time. To set the height of the double-click
rectangle, call SystemParametersInfo with SPI_SETDOUBLECLKHEIGHT.
SM_CYDRAG The number of pixels above and below a mouse-down point that
the mouse pointer can move before a drag operation begins. This allows
the user to click and release the mouse button easily without
unintentionally starting a drag operation. If this value is negative,
it is subtracted from above the mouse-down point and added below it.
SM_CYEDGE The height of a 3-D border, in pixels. This is the 3-D
counterpart of SM_CYBORDER. SM_CYFIXEDFRAME The thickness of the frame
around the perimeter of a window that has a caption but is not
sizable, in pixels. SM_CXFIXEDFRAME is the height of the horizontal
border, and SM_CYFIXEDFRAME is the width of the vertical border. This
value is the same as SM_CYDLGFRAME. SM_CYFOCUSBORDER The height of the
top and bottom edges of the focus rectangle drawn by DrawFocusRect.
This value is in pixels. SM_CYFRAME This value is the same as
SM_CYSIZEFRAME. SM_CYFULLSCREEN The height of the client area for a
full-screen window on the primary display monitor, in pixels. To get
the coordinates of the portion of the screen not obscured by the
system taskbar or by application desktop toolbars, call the
SystemParametersInfo function with the SPI_GETWORKAREA value.
SM_CYHSCROLL The height of a horizontal scroll bar, in pixels.
SM_CYICON The default height of an icon, in pixels. The LoadIcon
function can load only icons with the dimensions SM_CXICON and
SM_CYICON. SM_CYICONSPACING The height of a grid cell for items in
large icon view, in pixels. Each item fits into a rectangle of size
SM_CXICONSPACING by SM_CYICONSPACING when arranged. This value is
always greater than or equal to SM_CYICON. SM_CYKANJIWINDOW For double
byte character set versions of the system, this is the height of the
Kanji window at the bottom of the screen, in pixels. SM_CYMAXIMIZED
The default height, in pixels, of a maximized top-level window on the
primary display monitor. SM_CYMAXTRACK The default maximum height of a
window that has a caption and sizing borders, in pixels. This metric
refers to the entire desktop. The user cannot drag the window frame to
a size larger than these dimensions. A window can override this value
by processing the WM_GETMINMAXINFO message. SM_CYMENU The height of a
single-line menu bar, in pixels. SM_CYMENUCHECK The height of the
default menu check-mark bitmap, in pixels. SM_CYMENUSIZE The height of
menu bar buttons, such as the child window close button that is used
in the multiple document interface, in pixels. SM_CYMIN The minimum
height of a window, in pixels. SM_CYMINIMIZED The height of a
minimized window, in pixels. SM_CYMINSPACING The height of a grid cell
for a minimized window, in pixels. Each minimized window fits into a
rectangle this size when arranged. This value is always greater than
or equal to SM_CYMINIMIZED. SM_CYMINTRACK The minimum tracking height
of a window, in pixels. The user cannot drag the window frame to a
size smaller than these dimensions. A window can override this value
by processing the WM_GETMINMAXINFO message. SM_CYSCREEN The height of
the screen of the primary display monitor, in pixels. This is the same
value obtained by calling GetDeviceCaps as follows: GetDeviceCaps(
hdcPrimaryMonitor, VERTRES). SM_CYSIZE The height of a button in a
window caption or title bar, in pixels. SM_CYSIZEFRAME The thickness
of the sizing border around the perimeter of a window that can be
resized, in pixels. SM_CXSIZEFRAME is the width of the horizontal
border, and SM_CYSIZEFRAME is the height of the vertical border. This
value is the same as SM_CYFRAME. SM_CYSMCAPTION The height of a small
caption, in pixels. SM_CYSMICON The recommended height of a small
icon, in pixels. Small icons typically appear in window captions and
in small icon view. SM_CYSMSIZE The height of small caption buttons,
in pixels. SM_CYVIRTUALSCREEN The height of the virtual screen, in
pixels. The virtual screen is the bounding rectangle of all display
monitors. The SM_YVIRTUALSCREEN metric is the coordinates for the top
of the virtual screen. SM_CYVSCROLL The height of the arrow bitmap on
a vertical scroll bar, in pixels. SM_CYVTHUMB The height of the thumb
box in a vertical scroll bar, in pixels. SM_DBCSENABLED Nonzero if
User32.dll supports DBCS; otherwise, 0. SM_DEBUG Nonzero if the debug
version of User.exe is installed; otherwise, 0. SM_IMMENABLED Nonzero
if Input Method Manager/Input Method Editor features are enabled;
otherwise, 0. SM_IMMENABLED indicates whether the system is ready to
use a Unicode-based IME on a Unicode application. To ensure that a
language-dependent IME works, check SM_DBCSENABLED and the system ANSI
code page. Otherwise the ANSI-to-Unicode conversion may not be
performed correctly, or some components like fonts or registry
settings may not be present. SM_MEDIACENTER Nonzero if the current
operating system is the Windows XP, Media Center Edition, 0 if not.
SM_MENUDROPALIGNMENT Nonzero if drop-down menus are right-aligned with
the corresponding menu-bar item; 0 if the menus are left-aligned.
SM_MIDEASTENABLED Nonzero if the system is enabled for Hebrew and
Arabic languages, 0 if not. SM_MOUSEPRESENT Nonzero if a mouse is
installed; otherwise, 0. This value is rarely zero, because of support
for virtual mice and because some systems detect the presence of the
port instead of the presence of a mouse.
SM_MOUSEHORIZONTALWHEELPRESENT Nonzero if a mouse with a horizontal
scroll wheel is installed; otherwise 0. SM_MOUSEWHEELPRESENT Nonzero
if a mouse with a vertical scroll wheel is installed; otherwise 0.
SM_NETWORK The least significant bit is set if a network is present;
otherwise, it is cleared. The other bits are reserved for future use.
SM_PENWINDOWS Nonzero if the Microsoft Windows for Pen computing
extensions are installed; zero otherwise. SM_REMOTECONTROL This system
metric is used in a Terminal Services environment. Its value is
nonzero if the current session is remotely controlled; otherwise, 0.
SM_REMOTESESSION This system metric is used in a Terminal Services
environment. If the calling process is associated with a Terminal
Services client session, the return value is nonzero. If the calling
process is associated with the Terminal Server console session, the
return value is 0. The console session is not necessarily the physical
console. For more information, see WTSGetActiveConsoleSessionId.
SM_SAMEDISPLAYFORMAT Nonzero if all the display monitors have the same
color format, otherwise, 0. Two displays can have the same bit depth,
but different color formats. For example, the red, green, and blue
pixels can be encoded with different numbers of bits, or those bits
can be located in different places in a pixel color value. SM_SECURE
This system metric should be ignored; it always returns 0. SM_SERVERR2
The build number if the system is Windows Server 2003 R2; otherwise,
0. SM_SHOWSOUNDS Nonzero if the user requires an application to
present information visually in situations where it would otherwise
present the information only in audible form; otherwise, 0.
SM_SHUTTINGDOWN Nonzero if the current session is shutting down;
otherwise, 0. SM_SLOWMACHINE Nonzero if the computer has a low-end
(slow) processor; otherwise, 0. SM_STARTER Nonzero if the current
operating system is Windows XP Starter Edition; otherwise, 0.
SM_SWAPBUTTON Nonzero if the meanings of the left and right mouse
buttons are swapped; otherwise, 0. SM_TABLETPC Nonzero if the current
operating system is the Windows XP Tablet PC edition, 0 if not.
SM_XVIRTUALSCREEN The coordinates for the left side of the virtual
screen. The virtual screen is the bounding rectangle of all display
monitors. The SM_CXVIRTUALSCREEN metric is the width of the virtual
screen. SM_YVIRTUALSCREEN The coordinates for the top of the virtual
screen. The virtual screen is the bounding rectangle of all display
monitors. The SM_CYVIRTUALSCREEN metric is the height of the virtual
screen.


Examples
~~~~~~~~


::

    getsystemmetrics('SM_MOUSEPRESENT')
    getsystemmetrics('SM_SLOWMACHINE')
    getsystemmetrics('SM_REMOTESESSION');




