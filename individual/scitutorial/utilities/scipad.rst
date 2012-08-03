====
"scipad"
====

Scilab Function Last update : 05/09/2005
**scipad** - Embedded Scilab text editor



Calling Sequence
~~~~~~~~~~~~~~~~

scipad()
scipad(f)
scipad([f1,f2,...])
scipad f1 f2 ...




Parameters
~~~~~~~~~~


+ **f, f1, f2...** : file pathnames




Description
~~~~~~~~~~~

Scipad is an embedded Scilab text editor written in TCL/TK. It can be
started with the "Editor" button on top of the main Scilab window, or
from Scilab command line with the instruction **scipad()** or **scipad
f** .

The same invocation adds further files to an already opened scipad
session. Scipad allows Windows like edition modes. Keyboard shortcuts
are defined for most possible editing actions and reported by the menu
entries.

Additionally, the following shortcuts are defined:
<F2> Save file <F5> Save file and run it into Scilab <F6>,
<Control-F6> Show next buffer <F7>, <Control-F7> Show previous buffer
<double-click mouse-button1> Select word <triple-click mouse-button1>
Select line <Shift-Control-mouse-button1> Open the source of the
library function under the pointer <mouse-button2> Paste selection
<mouse-button3> Popup edit menu, or debug menu if clicked during a
debug session <Shift-mouse-button3> Popup Execute menu <Control-mouse-
button3> Popup Options menu <Control-plus> Increase the font size
<Control-minus> Decrease the font size <double-button1> on a tile
title Maximize this tile <double-button1> on a sash Space sashes
evenly (for this paned window) <button2> on a tile title Switch hidden
files
The "Load Into Scilab" (Ctrl-lowercase-l) menu entry can be used to `
**exec** `_ the file content into Scilab, while "Execute selection"
(Ctrl-lowercase-y) passes the selected lines to the scilab shell using
` **ScilabEval** `_ (i.e. ` **execstr** `_).





Debugger
~~~~~~~~

Scipad 2.0 or later includes a debugger (for .sci files only). The
user can:
