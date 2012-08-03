====
"xs2bmp"
====

Scilab Function Last update : 21/07/2005
**xs2bmp** - send graphics to a file in BMP syntax (Only for Windows)



Calling Sequence
~~~~~~~~~~~~~~~~

xs2bmp(win_num,filen)




Parameters
~~~~~~~~~~


+ **win_num** : integer scalar.
+ **filen** : string, file name.




Description
~~~~~~~~~~~

**xs2bmp** sends the recorded graphics of the window **win_num** in
the file **filen** in BMP format. This function works only if the
selected driver is **"Rec"** in the window **win_num** or if the
window is in "new style".



Examples
~~~~~~~~


::

     
        //simple example
        scf(0)
        plot2d()
        xs2bmp(0,'foo.bmp')
      




See Also
~~~~~~~~

` **xs2fig** `_,` **xs2ps** `_,` **xs2ppm** `_,` **xs2emf** `_,



Author
~~~~~~

A.C

.. _
      : ://./graphics/xs2fig.htm
.. _
      : ://./graphics/xs2emf.htm
.. _
      : ://./graphics/xs2ppm.htm
.. _
      : ://./graphics/xs2ps.htm


