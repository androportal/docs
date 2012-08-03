====
"xs2ppm"
====

Scilab Function Last update : 28/09/2004
**xs2ppm** - send graphics to a file in PPM syntax



Calling Sequence
~~~~~~~~~~~~~~~~

xs2ppm(win_num,filen,[color])




Parameters
~~~~~~~~~~


+ **win_num** : integer scalar or vector .
+ **filen** : string, file name.
+ **color** : optional integer. 0 means black and white and 1 means
  color. The default value is to use a value compatible with the screen
  status.




Description
~~~~~~~~~~~

**xs2ppm** sends the recorded graphics of the window **win_num** in
the file **filen** in PPM format. This function works only if the
selected driver is **"Rec"** in the window **win_num** or if the
window is in "new style".



Examples
~~~~~~~~


::

     
        scf(0)
        plot2d()
        xs2ppm(0,'foo.ppm')
      




See Also
~~~~~~~~

` **xs2fig** `_,` **xs2ps** `_,` **xs2gif** `_,

.. _
      : ://./graphics/xs2fig.htm
.. _
      : ://./graphics/xs2gif.htm
.. _
      : ://./graphics/xs2ps.htm


