


xs2emf
======

Export graphics to EMF (Only under Windows).



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xs2emf(win_num, file_name [,orientation])
    xs2emf(fig, file_name [,orientation])




Arguments
~~~~~~~~~

:win_num integer, id of the figure to export.
: :fig handle of the figure to export.
: :file_name string, name of the exported file.
: :orientation optional character, with possible values 'portrait' or
  'landscape'. The default value is 'portrait'.
:



Description
~~~~~~~~~~~

`xs2emf` exports the display of a graphic window into an EMF file.

The export file is obtained by creating an EPS file and converting it
into EMF format using pstoedit.



Examples
~~~~~~~~


::

    if `getos`_() == 'Windows' then
      `scf`_(0);
      `plot2d`_();
      //EMF export
      xs2emf(0,'foo.emf');
    end




See Also
~~~~~~~~


+ `xs2bmp`_ Export graphics to BMP.
+ `xs2gif`_ Export graphics to GIF.
+ `xs2jpg`_ Export graphics to JPG.
+ `xs2png`_ Export graphics to PNG.
+ `xs2ppm`_ Export graphics to PPM.
+ `xs2eps`_ Export graphics to EPS.
+ `xs2pdf`_ Export graphics to PDF.
+ `xs2svg`_ Export graphics to SVG.
+ `xs2ps`_ Export graphics to PS.


.. _xs2gif: xs2gif.html
.. _xs2png: xs2png.html
.. _xs2bmp: xs2bmp.html
.. _xs2pdf: xs2pdf.html
.. _xs2jpg: xs2jpg.html
.. _xs2eps: xs2eps.html
.. _xs2ps: xs2ps.html
.. _xs2ppm: xs2ppm.html
.. _xs2svg: xs2svg.html


