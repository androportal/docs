====
"xbasimp"
====

Scilab Function Last update : 11/01/2006
**xbasimp** - send graphics to a Postscript printer or in a file



Calling Sequence
~~~~~~~~~~~~~~~~

xbasimp(win_num,[filen,printer])




Parameters
~~~~~~~~~~


+ **win_num** : integer scalar or vector
+ **filen** : string, Postscript file name (default value is "file").
  The window number is appended to **filen** .
+ **printer** : string, printer name. If **printer** is present or if
  there is only one argument in the calling sequence, the created file
  is printed on printer **printer** .




Description
~~~~~~~~~~~

**xbasimp** sends the recorded graphics of the window **win_num** into
the Postscript file **filen. ** Note that the generated Postscript
file cannot be direcly printed since it requires a header file. The
Scilab command **BEpsf** , **Blpr** or others can be used to add a
header file. The function **xs2eps** can be used to directly produce
an encapsulated Postscript file with an header. If a printer is
specified, the Postscript file is printed with the command **Blpr** .
This function works only if the selected driver is **"Rec"** .

If **win_num** is a vector, several files are generated, one for each
selected window (with names **filenxx** ), and the files are printed
on a unique page with the command **Blpr** .

The window number is appended to **filen** .



See Also
~~~~~~~~

` **printing** `_,` **xs2fig** `_,` **xs2gif** `_,` **xs2ppm** `_,`
**xs2ps** `_,` **xs2eps** `_,

.. _
      : ://./graphics/xs2fig.htm
.. _
      : ://./graphics/xs2ppm.htm
.. _
      : ://./graphics/xs2eps.htm
.. _
      : ://./graphics/xs2gif.htm
.. _
      : ://./graphics/printing.htm
.. _
      : ://./graphics/xs2ps.htm


