


oct2dec
=======

convert from octal to decimal



Calling Sequence
~~~~~~~~~~~~~~~~


::

    d=oct2dec(o)




Arguments
~~~~~~~~~

:o matrix of strings corresponding to octal representation
: :d matrix of doubles, positive integer values
:



Description
~~~~~~~~~~~

`oct2dec(x)` returns the matrix of numbers corresponding to the octal
representation.



Examples
~~~~~~~~


::

    oct2dec(["1" "756115"; "0" "23"])




See Also
~~~~~~~~


+ `base2dec`_ convert from base b to decimal
+ `bin2dec`_ convert from binary to decimal
+ `hex2dec`_ convert from hexadecimal to decimal
+ `dec2bin`_ convert from decimal to binary
+ `dec2oct`_ convert from decimal to octal
+ `dec2hex`_ convert from decimal to hexadecimal


.. _hex2dec: hex2dec.html
.. _bin2dec: bin2dec.html
.. _dec2bin: dec2bin.html
.. _dec2hex: dec2hex.html
.. _base2dec: base2dec.html
.. _dec2oct: dec2oct.html


