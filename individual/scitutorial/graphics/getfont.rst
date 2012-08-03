====
"getfont"
====

Scilab Function Last update : April 1993
**getfont** - dialog to select font



Calling Sequence
~~~~~~~~~~~~~~~~

[fId,fSize]=getfont()
[fId,fSize]=getfont(str)
fnt=getfont()
fnt=getfont(str)
fnt=getfont(S=str,font=[fId,fSize])




Parameters
~~~~~~~~~~


+ **str** : character (e.g. "a")
+ **fId** : integer, the number of the selected font
+ **fSize** : integer, the size of the selected font
+ **fnt** : vector [fId,fSize]




Description
~~~~~~~~~~~

**getfont** opens a graphic window to select a font. User has to
select a font and a size clicking on the corresponding displayed
character. Killing a keyboard key changes the displayed character.



Examples
~~~~~~~~


::

    
    
    [fId,fSize]=getfont();
    xset("font",fId,fSize)
    plot2d(0,0,rect=[0 0 10 10],axesflag=0)
    xstring(5,5,"string")
       
      




See Also
~~~~~~~~

` **xset** `_,` **getmark** `_,` **xlfont** `_,

.. _
      : ://./graphics/xlfont.htm
.. _
      : ://./graphics/getmark.htm
.. _
      : ://./graphics/xset.htm


