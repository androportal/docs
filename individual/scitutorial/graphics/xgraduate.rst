====
"xgraduate"
====

Scilab Function Last update : November 1993
**xgraduate** - axis graduation



Calling Sequence
~~~~~~~~~~~~~~~~

[xi,xa,np1,np2,kMinr,kMaxr,ar]=xgraduate(xmi,xma)




Parameters
~~~~~~~~~~


+ **xmi,xma** : real scalars
+ **xi, xa, kMinr, kMaxr, ar** :real scalars
+ **np1,np2** : integer




Description
~~~~~~~~~~~

**xgraduate** returns the axis graduations which are used by the plot
routines (with pretty print flag enabled). It returns an interval
**[xi,xa]** which contains the given interval **[xmi,xma]** and such
that

**xi= kMinr*10^ar** , **xa=kMaxr*10^ar** and the interval can be
divided into **np2** intervals and each interval is divided in **np1**
sub-intervals.



Examples
~~~~~~~~


::

    
    
      [x1,xa,np1,np2,kMinr,kMaxr,ar]=xgraduate(-0.3,0.2)
     
      




See Also
~~~~~~~~

` **graduate** `_,` **plot2d** `_,



Author
~~~~~~

J.P.C ; ;

.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/graduate.htm


