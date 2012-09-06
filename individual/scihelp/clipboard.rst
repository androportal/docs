


clipboard
=========

Copy and paste strings to and from the system clipboard.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    clipboard("copy",data)
    str=clipboard("paste")
    clipboard("do","paste")
    clipboard("do","copy")
    clipboard("do","empty")
    clipboard(winnum,"EMF")
    clipboard(winnum,"DIB")




Arguments
~~~~~~~~~

:data Scilab variable or data to set as the clipboard contents.
: :str The clipboard contents returned as a Scilab character string.
: :winnum Number of the graphic window to set as the clipboard
  contents.
:



Description
~~~~~~~~~~~

`clipboard("copy",data)` sets the clipboard contents to data. If data
is not a character array, the clipboard uses `sci2exp` to convert it
to a string.

`str = clipboard("paste")` returns the current contents of the
clipboard as a string or as an empty string (""), if the current
clipboard contents cannot be converted to a string.

`clipboard("do","paste")`, `clipboard("do","copy")`,
`clipboard("do","empty")` performs a paste, copy or empty clipboard.

`clipboard(winnum,"EMF")` copy a graphic window identified by his
window's number in the clipboard to EMF format.

`clipboard(winnum,"DIB")` copy a graphic window identified by his
window's number in the clipboard to DIB format.

Note that `clipboard` function works only when Scilab used in window
mode.



