====
"xs2emf"
====

Scilab Function Last update : 21/07/2005
**xs2emf** - send graphics to a file in EMF syntax (Only for Windows)



Calling Sequence
~~~~~~~~~~~~~~~~

xs2emf(win_num,filen)




Parameters
~~~~~~~~~~


+ **win_num** : integer scalar.
+ **filen** : string, file name.




Description
~~~~~~~~~~~

**xs2emf** sends the recorded graphics of the window **win_num** in
the file **filen** in EMF format. This function works only if the
selected driver is **"Rec"** in the window **win_num** or if the
window is in "new style".



Examples
~~~~~~~~


::

     
        //simple example
        scf(0)
        plot2d()
        xs2emf(0,'foo.emf')
      




See Also
~~~~~~~~

` **xs2fig** `_,` **xs2ps** `_,` **xs2ppm** `_,` **xs2bmp** `_,



Author
~~~~~~

A.C

.. _
      : ://./graphics/xs2fig.htm
.. _
      : ://./graphics/xs2bmp.htm
.. _
      : ://./graphics/xs2ppm.htm
.. _
      : ://./graphics/xs2ps.htm


