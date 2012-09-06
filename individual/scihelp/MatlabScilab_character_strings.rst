


Matlab-Scilab_character_strings
===============================

Generally speaking about...



Description
~~~~~~~~~~~

Matlab and Scilab character strings are not considered in the same
way. Here is a little talk about differences between them.

Matlab considers a character string as Scilab considers a matrix of
characters. For example, a Scilab equivalent for Matlab 'mystring'
could be ["m","y","s","t","r","i","n","g"]. So in Scilab, a character
string is an object of type string (10) and always have size 1 x 1 but
in Matlab, a character string have size equal to 1 x
number_of_characters.

Considering this, we can see that a Matlab character string matrix
column can only be made of same-size character strings what is not
true in Scilab. We can say that a Scilab character string matrix is
equivalent to a Matlab cell of character strings.

All these differences can lead to different results while executing
same commands in Scilab or in Matlab, particularly for "dimension"
functions such as length() or size().



See Also
~~~~~~~~


+ `mstr2sci`_ character string matrix to character matrix conversion


.. _mstr2sci: mstr2sci.html


