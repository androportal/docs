====
"xend"
====

Scilab Function Last update : April 1993
**xend** - close a graphics session



Calling Sequence
~~~~~~~~~~~~~~~~

xend()




Description
~~~~~~~~~~~

**xend** is used to close a graphics session. Under the Postscript,
Xfig or Gif drivers **xend** closes the file which was opened by
**xinit** .



Examples
~~~~~~~~


::

    
    
    driver("Pos")
    xinit("foo.ps")
    plot2d()
    xend()
    driver("X11")
     
      




See Also
~~~~~~~~

` **xbasimp** `_,` **xend** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xbasimp.htm
.. _
      : ://./graphics/xend.htm


