====
"clipboard"
====

Scilab Function Last update : 24/08/2005
**clipboard** - Copy and paste strings to and from the system
clipboard (Windows).



Calling Sequence
~~~~~~~~~~~~~~~~

clipboard('copy',data)
str=clipboard('paste')
clipboard('do','paste')
clipboard('do','copy')
clipboard('do','empty')
clipboard(winnum,'EMF')
clipboard(winnum,'DIB')




Description
~~~~~~~~~~~

**clipboard('copy',data)** sets the clipboard contents to data. If
data is not a character array, the clipboard uses sci2exp to convert
it to a string.

**str = clipboard('paste')** returns the current contents of the
clipboard as a string or as an empty string (' '), if the current
clipboard contents cannot be converted to a string.

**clipboard('do','paste')** , **clipboard('do','copy')** ,
**clipboard('do','empty')** performs a paste, copy or empty clipboard.

Note that **clipboard(...) ** works only Windows platforms when Scilab
used in window mode.

**clipboard(winnum,'EMF')** copy a graphic windows identified by his
window's number in the clipboard to EMF format.

**clipboard(winnum,'DIB') ** copy a graphic windows identified by his
window's number in the clipboard to DIB format.



Authors
~~~~~~~

****A.C.




