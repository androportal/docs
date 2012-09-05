


xstringb
========

draw strings into a box



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xstringb(x,y,str,w,h,[option])




Arguments
~~~~~~~~~

:x,y,w,h vector of 4 real scalars defining the box.
: :str matrix of strings. Starting from Scilab 5.2, it is possible to
  write `LaTeX or MathML expression`_.
: :option string.
:



Description
~~~~~~~~~~~

`xstringb` draws the matrix of strings `str` centered inside the
rectangle `rect=[x,y,w,h]` (lower-left point, width, height) in user
coordinates.

If `option` is given with the value `"fill"`, the character size is
computed so as to fill as much as possible in the rectangle.

Enter the command `xstringb()` to see a demo.



Sample
~~~~~~



Examples
~~~~~~~~


::

    str=["Scilab" "is";"$\sqrt{not}$" "elisaB"]; // LaTeX rendering (>= Scilab 5.2)
    `plot2d`_(0,0,[-1,1],"010"," ",[0,0,1,1]);
    
    r=[0,0,1,0.5];
    xstringb(r(1),r(2),str,r(3),r(4),"fill");
    `xrect`_(r(1),r(2)+r(4),r(3),r(4));
    
    r=[r(1),r(2)+r(4)+0.01,r(3),r(4)/2];
    `xrect`_(r(1),r(2)+r(4),r(3),r(4))
    xstringb(r(1),r(2),str,r(3),r(4),"fill");
    
    r=[r(1),r(2)+r(4)+0.01,r(3),r(4)/2];
    `xrect`_(r(1),r(2)+r(4),r(3),r(4))
    xstringb(r(1),r(2),str,r(3),r(4),"fill");




See Also
~~~~~~~~


+ `titlepage`_ add a title in the middle of a graphics window
+ `xstring`_ draw strings
+ `xstringl`_ compute a box which surrounds strings
+ `xtitle`_ add titles on a graphics window


.. _xtitle: xtitle.html
.. _titlepage: titlepage.html
.. _LaTeX or MathML expression: math_rendering_features_in_graphic.html
.. _xstring: xstring.html
.. _xstringl: xstringl.html


