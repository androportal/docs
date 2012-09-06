


xtitle
======

add titles on a graphics window



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xtitle(title,[x_label,[y_label,[z_label]]],<opts_args>)




Arguments
~~~~~~~~~

:title,x_label,y_label, z_label matrices of strings. Starting from
  Scilab 5.2, it is possible to write `LaTeX or MathML expression`_.
: :<opt_args> a sequence of statements `key1=value1, key2=value2` ,...
  where keys may be `boxed` (see below). In this case, the order has no
  special meaning.
: :boxed an integer value. If it is 1, a box is drawn around each
  title.
:



Description
~~~~~~~~~~~

`xtitle` add titles on a 2D or 3D plot. `title` is the general title
and **x_label**, **y_label** and **z_label** are the titles on the
three axis. If the arguments are matrices, each line of the matrices
is displayed on a different line.

Enter the command `xtitle()` to see a demo.



Sample
~~~~~~



Examples
~~~~~~~~


::

    `plot3d`_() ;
    // puts the titles
    xtitle( 'My surface is blue', 'X axis', 'Y axis', 'Z axis' ) ;
    // draw a box around the titles
    xtitle( 'My surface is blue', 'X axis', 'Y axis', 'Z axis', boxed = 1 );
    
    // With LaTeX & MathML:
    mathml="<mrow>      <mfrac>        <mrow>          <mi>d</mi>          <mi>y</mi>        </mrow>        <mrow>          <mi>d</mi>          <mi>x</mi>        </mrow>      </mfrac>      <mo>=</mo>      <mfrac>        <mn>1</mn>        <msup>          <mi>y</mi>          <mn>2</mn>        </msup>      </mfrac>    </mrow>";
    
    xtitle( 'My surface is blue', 'X axis', '$Y axis$', mathml );




See Also
~~~~~~~~


+ `titlepage`_ add a title in the middle of a graphics window
+ `label_properties`_ description of the Label entity properties


.. _LaTeX or MathML expression: math_rendering_features_in_graphic.html
.. _label_properties: label_properties.html
.. _titlepage: titlepage.html


