


xstringl
========

compute a box which surrounds strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    rect=xstringl(x,y,str,[fontId,fontSize])




Arguments
~~~~~~~~~

:rect vector of 4 real scalars defining the box.
: :x,y real scalars, coordinates of the lower-left point of the
  strings.
: :str matrix of strings. Starting from Scilab 5.2, it is possible to
  write `LaTeX or MathML expression`_.
: :fontId an integer specifying the font type.
: :fontSize an integer specifying the font size.
:



Description
~~~~~~~~~~~

`xstringl` returns in `rect=[x,y,w,h]` (upper-left point, width,
height) the size of a rectangle in the current graphic scale which
would surround the strings `str` drawn at location `x,y` (lower-left
point).

The result can be approximative when using the Postscript driver.



Sample
~~~~~~



Examples
~~~~~~~~


::

    `plot2d`_([0;1],[0;1],0)
    str=["$\underleftrightarrow{Scilab}$" "is";"not" "elisaB"]; // Only valid from Scilab 5.2
    r=xstringl(0.5,0.5,str)
    `xrects`_([r(1) r(2)+r(4) r(3) r(4)]')
    `xstring`_(r(1),r(2),str)
    
    `plot2d`_([0;1],[0;1],0)
    str=["Scilab" "n''est ";"pas" "Matlab"];
    r2 = xstringl(0.5,0.5,str,2,5)
    `xrects`_([r2(1) r2(2)+r2(4) r2(3) r2(4)]')
    `xstring`_(r2(1),r2(2),str)
    
    txt2=`gce`_();
    txt2.font_size = 5;
    txt2.font_style = 2;
    
    `plot2d`_([0;1],[0;1],0)
    // Only valid from Scilab 5.2
    mathml="<mrow>      <mfrac>        <mrow>          <mi>d</mi>          <mi>y</mi>        </mrow>        <mrow>          <mi>d</mi>          <mi>x</mi>        </mrow>      </mfrac>      <mo>=</mo>      <mfrac>        <mn>1</mn>        <msup>          <mi>y</mi>          <mn>2</mn>        </msup>      </mfrac>    </mrow>";
    a=`gca`_(); 
    a.margins=[0,0;0,0];
    str=["SCILAB","can write LaTeX :","$\frac{abc}{xyz}$";"or","MathML :",mathml] ; 
    r2 = xstringl(0.5,0.5,str,2,5)
    `xrects`_([r2(1) r2(2)+r2(4) r2(3) r2(4)]')
    `xstring`_(r2(1),r2(2),str)




See Also
~~~~~~~~


+ `titlepage`_ add a title in the middle of a graphics window
+ `xstring`_ draw strings
+ `xstringl`_ compute a box which surrounds strings
+ `xtitle`_ add titles on a graphics window
+ `stringbox`_ Compute the bounding rectangle of a text or a label.


.. _xtitle: xtitle.html
.. _titlepage: titlepage.html
.. _LaTeX or MathML expression: math_rendering_features_in_graphic.html
.. _stringbox: stringbox.html
.. _xstring: xstring.html
.. _xstringl: xstringl.html


