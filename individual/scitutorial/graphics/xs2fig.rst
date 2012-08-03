====
"xs2fig"
====

Scilab Function Last update : 28/09/2004
**xs2fig** - send graphics to a file in Xfig syntax



Calling Sequence
~~~~~~~~~~~~~~~~

xs2fig(win_num,filen,[color])




Parameters
~~~~~~~~~~


+ **win_num** : integer scalar or vector .
+ **filen** : string, file name.
+ **color** : optional integer. 0 means black and white and 1 means
  color. The default value is to use a value compatible with the screen
  status.




Description
~~~~~~~~~~~

**xs2fig** sends the recorded graphics of the window **win_num** in
the file **filen** in Xfig syntax. This function works only if the
selected driver is **"Rec"** or if the window is in "new style".



Examples
~~~~~~~~


::

     
        scf(0)
        plot2d()
        xs2fig(0,'foo.fig')
      




See Also
~~~~~~~~

` **xs2ps** `_,` **xs2gif** `_,` **xs2ppm** `_,

.. _
      : ://./graphics/xs2gif.htm
.. _
      : ://./graphics/xs2ppm.htm
.. _
      : ://./graphics/xs2ps.htm


