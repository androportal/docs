====
"xs2ps"
====

Scilab Function Last update : 11/01/2006
**xs2ps** - send graphics to a file in PS syntax



Calling Sequence
~~~~~~~~~~~~~~~~

xs2ps(win_num,filen,[color])




Parameters
~~~~~~~~~~


+ **win_num** : integer scalar or vector .
+ **filen** : string, file name.
+ **color** : optional integer. 0 means black and white and 1 means
  color. The default value is to use a value compatible with the screen
  status.




Description
~~~~~~~~~~~

**xs2ps** saves the recorded graphics of the window **win_num** to
file **filen** in Postscript syntax. The **filen** must not have
suffix extension.

Note that the generated Postscript file cannot be direcly printed
since it requires a header file. The Scilab command **BEpsf** or
others can be used to add a header file. The function **xs2eps** can
be used to directly produce an encapsulated Postscript file with an
header.

This function works only if the selected driver is **"Rec"** in the
window **win_num** or if the window is in "new style". The generated
postscript file does not contrains the header part



Examples
~~~~~~~~


::

     
        scf(0)
        plot2d()
        // Postcript export
        filename='foo'; // ! no extension
        xs2ps(0,filename)
        //add the Postscript file header and create <filename>.eps file
        if MSDOS then
          unix_s(pathconvert('""'+WSCI+'/bin/BEpsf'+'""',%f)+' -p ' +filename)
        else
          unix_s(pathconvert('SCI/bin/BEpsf',%f)+' -p ' +filename)
        end
        // Gif export
        xs2gif(0,'foo.gif')
        // ppm export
        xs2ppm(0,'foo.ppm')
      




See Also
~~~~~~~~

` **set_posfig_dim** `_,` **printing** `_,` **xs2eps** `_,` **xs2fig**
`_,` **xs2gif** `_,` **xbasimp** `_,` **xs2ppm** `_,

.. _
      : ://./graphics/xs2eps.htm
.. _
      : ://./graphics/set_posfig_dim.htm
.. _
      : ://./graphics/xs2ppm.htm
.. _
      : ://./graphics/xs2fig.htm
.. _
      : ://./graphics/xs2gif.htm
.. _
      : ://./graphics/xbasimp.htm
.. _
      : ://./graphics/printing.htm


