====
"fgrayplot"
====

Scilab Function Last update : 08/12/2006
**fgrayplot** - 2D plot of a surface defined by a function using
colors



Calling Sequence
~~~~~~~~~~~~~~~~

fgrayplot(x,y,f,[strf,rect,nax])
fgrayplot(x,y,f,<opt_args>)




Parameters
~~~~~~~~~~


+ **x,y** : real row vectors.
+ **f** : external of type **y=f(x,y)** .
+ **<opt_args> ** : This represents a sequence of statements
  **key1=value1, key2=value2** ,... where **key1** , **key2,...** can be
  one of the following: rect, nax, strf or axesflag and frameflag (see
  **plot2d** ).
+ **strf,rect,nax** : see **plot2d** .




Description
~~~~~~~~~~~

**fgrayplot** makes a 2D plot of the surface given by **z=f(x,y)** on
a grid defined by **x** and **y** . Each rectangle on the grid is
filled with a gray or color level depending on the average value of
**z** on the corners of the rectangle.

Enter the command **fgrayplot()** to see a demo.



Examples
~~~~~~~~


::

    
    
    t=-1:0.1:1;
    deff("[z]=my_surface(x,y)","z=x**2+y**2")
    fgrayplot(t,t,my_surface,rect=[-2,-2,2,2])
     
      




See Also
~~~~~~~~

` **grayplot** `_,` **plot2d** `_,` **Sgrayplot** `_,` **Sfgrayplot**
`_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/grayplot.htm
.. _
      : ://./graphics/Sfgrayplot.htm
.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/Sgrayplot.htm


