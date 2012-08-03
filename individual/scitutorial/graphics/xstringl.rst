====
"xstringl"
====

Scilab Function Last update : 25/11/2005
**xstringl** - compute a box which surrounds strings



Calling Sequence
~~~~~~~~~~~~~~~~

rect=xstringl(x,y,str,[fontId,fontSize])




Parameters
~~~~~~~~~~


+ **rect** : vector of 4 real scalars defining the box.
+ **x,y** : real scalars, coordinates of the lower-left point of the
  strings.
+ **str** : matrix of strings.
+ **fontId** : an integer specifying the font type.
+ **fontSize** : an integer specifying the font size.




Description
~~~~~~~~~~~

**xstringl** returns in **rect=[x,y,w,h]** (upper-left point, width,
height) the size of a rectangle in the current graphic scale which
would surround the strings **str** drawn at location **x,y** (lower-
left point).

The result can be approximative when using the Postscript driver.



Examples
~~~~~~~~


::

    
    
    plot2d([0;1],[0;1],0)
    str=["Scilab" "is";"not" "elisaB"];
    r=xstringl(0.5,0.5,str)
    xrects([r(1) r(2)+r(4) r(3) r(4)]')
    xstring(r(1),r(2),str)
     
    
    plot2d([0;1],[0;1],0)
    str=["Scilab" "n''est ";"pas" "Matlab"];
    r2 = xstringl(0.5,0.5,str,2,5)
    xrects([r2(1) r2(2)+r2(4) r2(3) r2(4)]')
    xstring(r2(1),r2(2),str)
    
    e=gce();
    e.children(1).font_size = 5;
    e.children(1).font_style = 2;
    e.children(2).font_size = 5;
    e.children(2).font_style = 2;
      




See Also
~~~~~~~~

` **titlepage** `_,` **xstring** `_,` **xstringl** `_,` **xtitle**
`_,` **stringbox** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/titlepage.htm
.. _
      : ://./graphics/xstring.htm
.. _
      : ://./graphics/xtitle.htm
.. _
      : ://./graphics/stringbox.htm
.. _
      : ://./graphics/xstringl.htm


