====
"xnumb"
====

Scilab Function Last update : April 1993
**xnumb** - draw numbers



Calling Sequence
~~~~~~~~~~~~~~~~

xnumb(x,y,nums,[box,angle])




Parameters
~~~~~~~~~~


+ **x,y,nums** : vectors of same size.
+ **box** : integer value.
+ **angle** : optional vector of same size as **x**




Description
~~~~~~~~~~~

**xnumb** draws the value of **nums(i)** at position **x(i),y(i)** in
the current scale. If **box** is 1, a box is drawn around the numbers.
If **angle** is given, it gives the direction for string drawing.



Examples
~~~~~~~~


::

    
    
    plot2d([-100,500],[-100,600],[-1,-1],"022")
    x=0:100:200;
    xnumb(x,500*ones(x),[10,20,35],1)
     
      




See Also
~~~~~~~~

` **xstring** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xstring.htm


