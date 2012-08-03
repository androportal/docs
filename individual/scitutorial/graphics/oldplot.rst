====
"oldplot"
====

Scilab Function Last update : 16/02/2005
**oldplot** - simple plot (old version)



Calling Sequence
~~~~~~~~~~~~~~~~

oldplot(x,y,[xcap,ycap,caption])
oldplot(y)




Parameters
~~~~~~~~~~


+ **x,y** : two vectors with same sizes
+ **xcap,ycap,caption** : character strings or string matrices




Description
~~~~~~~~~~~

Plot **y** as function of **x** . **xcap** and **ycap** are captions
for x-axis and y-axis respectively and **caption** is the caption of
the plot.

Invoked with only one argument, **oldplot(y)** plots the **y** vector
or, if **y** is a matrix, it plots all its row vectors on the same
plot. This plot is done with respect to the vector 1:<number of
columns of **y** >.

**oldplot** is obsolete. Use **plot2d** or **plot** instead.



Examples
~~~~~~~~


::

    
    
    x=0:0.1:2*%pi;
    // simple plot
    oldplot(sin(x))
    // using captions
    xbasc()
    oldplot(x,sin(x),"sin","time","plot of sinus")
    // plot 2 functions
    xbasc()
    oldplot([sin(x);cos(x)])
     
      




See Also
~~~~~~~~

` **plot2d** `_,` **plot** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/plot.htm
.. _
      : ://./graphics/plot2d.htm


