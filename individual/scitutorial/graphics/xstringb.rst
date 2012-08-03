====
"xstringb"
====

Scilab Function Last update : April 1993
**xstringb** - draw strings into a box



Calling Sequence
~~~~~~~~~~~~~~~~

xstringb(x,y,str,w,h,[option])




Parameters
~~~~~~~~~~


+ **x,y,w,h** : vector of 4 real scalars defining the box.
+ **str** : matrix of strings.
+ **option** : string.




Description
~~~~~~~~~~~

**xstringb** draws the matrix of strings **str** centered inside the
rectangle **rect=[x,y,w,h]** (lower-left point, width, height) in the
current graphic scale. If **option** is given with the value
**"fill"** , the character size is computed so as to fill as much as
possible in the rectangle.

Enter the command **xstringb()** to see a demo.



Examples
~~~~~~~~


::

    
    
    str=["Scilab" "is";"not" "elisaB"];
    plot2d(0,0,[-1,1],"010"," ",[0,0,1,1]);
    r=[0,0,1,0.5];
    xstringb(r(1),r(2),str,r(3),r(4),"fill");
    xrect(r(1),r(2)+r(4),r(3),r(4))
    r=[r(1),r(2)+r(4)+0.01,r(3),r(4)/2];
    xrect(r(1),r(2)+r(4),r(3),r(4))
    xstringb(r(1),r(2),str,r(3),r(4),"fill");
    r=[r(1),r(2)+r(4)+0.01,r(3),r(4)/2];
    xrect(r(1),r(2)+r(4),r(3),r(4))
    xstringb(r(1),r(2),str,r(3),r(4),"fill");
     
      




See Also
~~~~~~~~

` **titlepage** `_,` **xstring** `_,` **xstringl** `_,` **xtitle** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/titlepage.htm
.. _
      : ://./graphics/xtitle.htm
.. _
      : ://./graphics/xstring.htm
.. _
      : ://./graphics/xstringl.htm


