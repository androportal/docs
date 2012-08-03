====
"xs2eps"
====

Scilab Function Last update : 08/06/2005
**xs2eps** - save graphics to a Postscript file.



Calling Sequence
~~~~~~~~~~~~~~~~

xs2eps(win_num,filen [,colored] [,orientation])




Parameters
~~~~~~~~~~


+ **win_num** : integer scalar or vector .
+ **filen** : string, file name.
+ **colored** : optional integer or boolean. 0 (%f) means black and
  white and 1 (%t) means color. The default value (-1) is to use a value
  compatible with the screen status.
+ **orientation** : optional character, with possible values 'p'
  (portrait) or 'l' (landscape). The default value is 'p'.




Description
~~~~~~~~~~~

**xs2eps** saves the recorded graphics of the window **win_num** to
file **filen** in Postscript syntax. Note that **filen** must not have
extension.

**xs2eps** produces a complete encapsulated Postscrip file. It simply
calls **xs2eps** and then **BEpsf** .

This function works only if the selected driver is **"Rec"** in the
window **win_num** or if the window is in "new style". The generated
postscript file does not contrains the header part



Examples
~~~~~~~~


::

     
        scf(0)
        plot2d()
        // Postscript export
        filename='foo'; // ! no extension
        xs2eps(0,filename)
      




See Also
~~~~~~~~

` **set_posfig_dim** `_,` **printing** `_,` **xs2ps** `_,` **xs2fig**
`_,` **xs2gif** `_,` **xbasimp** `_,` **xs2ppm** `_,

.. _
      : ://./graphics/xs2fig.htm
.. _
      : ://./graphics/set_posfig_dim.htm
.. _
      : ://./graphics/xs2ppm.htm
.. _
      : ://./graphics/xs2gif.htm
.. _
      : ://./graphics/xbasimp.htm
.. _
      : ://./graphics/printing.htm
.. _
      : ://./graphics/xs2ps.htm


