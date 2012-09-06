


xs2jpg
======

Export graphics to JPG.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xs2jpg(win_num, file_name [, compression_quality])
    xs2jpg(fig, file_name [, compression_quality])




Arguments
~~~~~~~~~

:win_num integer, id of the figure to export.
: :fig handle of the figure to export.
: :file_name string, name of the exported file.
: :compression_quality real, a number between 0 and 1 (best quality).
  The default compression quality is set to 0.95. Argument available
  since Scilab 5.3.2
:



Description
~~~~~~~~~~~

`xs2jpg` exports the display of a graphic window into a JPG file.



Examples
~~~~~~~~


::

    `scf`_(0);
    `plot2d`_();
    //JPG export
    xs2jpg(0,'foo.jpg');
    xs2jpg(`gcf`_(),'foo.jpg');
    xs2jpg(0,'foo_0.jpg', 0); // poor quality
    xs2jpg(`gcf`_(),'foo_1.jpg', 1); // best quality




See Also
~~~~~~~~


+ `xs2bmp`_ Export graphics to BMP.
+ `xs2gif`_ Export graphics to GIF.
+ `xs2png`_ Export graphics to PNG.
+ `xs2ppm`_ Export graphics to PPM.
+ `xs2eps`_ Export graphics to EPS.
+ `xs2pdf`_ Export graphics to PDF.
+ `xs2svg`_ Export graphics to SVG.
+ `xs2ps`_ Export graphics to PS.
+ `xs2emf`_ Export graphics to EMF (Only under Windows).


.. _xs2gif: xs2gif.html
.. _xs2png: xs2png.html
.. _xs2bmp: xs2bmp.html
.. _xs2pdf: xs2pdf.html
.. _xs2ppm: xs2ppm.html
.. _xs2eps: xs2eps.html
.. _xs2ps: xs2ps.html
.. _xs2emf: xs2emf.html
.. _xs2svg: xs2svg.html


