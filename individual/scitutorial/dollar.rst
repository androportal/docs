


dollar
======

($) last index



Description
~~~~~~~~~~~

The `$` symbol denotes the last index (row or column) of the array. It
is therefore equal to the number of rows or columns.

The `$` symbol is also used to LaTeX texts, which must start and end
by `$`. See also `math_rendering_features_in_graphic`_.



Examples
~~~~~~~~


::

    a=[1,2,3;4,5,6];
    a($)
    
    b = [1 2 3;4 5 6;7 8 9];
    // Access the last element of first row, i.e. 3
    b(1,$)
    // Access the last element of second column, i.e. 7
    b($,2)
    //Access the last element of b, i.e. 9
    b($,$)
    
    // Add a row at the end of the matrix b
    b($+1,:) = [1 1 1]
    
    // The $ symbol as a LaTeX delimiter
    `titlepage`_(['$\Huge\textrm{It is }\LaTeX:$';'$\Huge 2^2+1=\sqrt{25}$'])




See Also
~~~~~~~~


+ `math_rendering_features_in_graphic`_ Display mathematical equations
  in Scilab graphics through the LaTeX or MathML languages.
+ `size`_ size of objects
+ `length`_ length of object


.. _math_rendering_features_in_graphic: math_rendering_features_in_graphic.html
.. _size: size.html
.. _length: length.html


