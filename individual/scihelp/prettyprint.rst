


prettyprint
===========

From any Scilab datatype and provide a representation to the TeX,
LaTeX or MathML formats



Calling Sequence
~~~~~~~~~~~~~~~~


::

    str = prettyprint(a) // Show the variable a with the default format (LaTeX)
    str = prettyprint(a, exportFormat) // Show the variable a with the specified format
    str = prettyprint(a, exportFormat, delim) // As above but change the delimiter
    str = prettyprint(a, exportFormat, delim, processByElement) // As above but process each element independently
    str = prettyprint(a,exportFormat, delim, processByElement, isWrapped) // As above Add the special keyword of Tex or LaTeX export




Arguments
~~~~~~~~~

:a is a Scilab variable
: :exportFormat is the format, if omitted 'latex' is used by default,
  it can be 'latex', 'tex' or 'mathml'.
: :delimiter is a string indicating the delimiter to use for the
  resulting matrix, it's only used if isWrapped is true. The delimiter
  can be '(', '{', '[', '|', '||' or ')'
: :processByElement is a boolean to indicate if the resulting matrix
  must be converted into a single string.
: :isWrapped is a boolean to indicate if the result must be wrapped
  inside delimiters ('$' for latex and tex or nothing for mathml) to be
  used with xstring or xtitle
: :str the representation of the variable a
:



Description
~~~~~~~~~~~

Taking a variable, the prettyprint function will provide a formated
representation of it. Formats can be TeX, LaTeX or MathML. They can be
used in third party applications but also within Scilab with the most
of the `Scilab graphic features`_. The following types are handled by
this function:


+ Real / Complex matrices
+ Polynomial types
+ Boolean
+ Integer
+ String
+ Tlist
+ Rationnal
+ Cell






Examples
~~~~~~~~


::

    str = prettyprint(`rand`_(3,3)) // Return the LaTeX representation of a 3,3 matrix
    `xstring`_(0.2,0.2,str) // Show the representation in a graphic Windows
    
    prettyprint(`rand`_(3,4),"mathml") // Return the MathML representation of a 3,4 matrix
    prettyprint(`rand`_(3,4),"mathml","[") // Return the MathML representation of a 3,4 matrix with '[' as delimiter
    
    s=`poly`_(0,'s'); G=[1,s;1+s^2,3*s^3];
    `xstring`_(0.2,0.2,prettyprint(G*s-1)); // Show a polynomial through a LaTeX representation




See Also
~~~~~~~~


+ `math_rendering_features_in_graphic`_ Display mathematical equations
  in Scilab graphics through the LaTeX or MathML languages.
+ `xtitle`_ add titles on a graphics window
+ `axes_properties`_ description of the axes entity properties
+ `label_properties`_ description of the Label entity properties
+ `legend_properties`_ description of the Legend entity properties.
+ `sci2exp`_ converts an expression to a string
+ `text_properties`_ description of the Text entity properties
+ `xstringb`_ draw strings into a box
+ `xstringl`_ compute a box which surrounds strings
+ `xstring`_ draw strings


.. _sci2exp: sci2exp.html
.. _label_properties: label_properties.html
.. _xtitle: xtitle.html
.. _xstringb: xstringb.html
.. _math_rendering_features_in_graphic: math_rendering_features_in_graphic.html
.. _text_properties: text_properties.html
.. _xstring: xstring.html
.. _axes_properties: axes_properties.html
.. _legend_properties: legend_properties.html
.. _xstringl: xstringl.html


