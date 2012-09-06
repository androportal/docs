


base2dec
========

convert from base b to decimal



Calling Sequence
~~~~~~~~~~~~~~~~


::

    d=base2dec(s,b)




Arguments
~~~~~~~~~

:s matrix of strings corresponding to base b representation
: :b 1-by-1 matrix of doubles, positive integer value, the base
: :d matrix of doubles, positive integer values
:



Description
~~~~~~~~~~~

`base2dec(x,b)` returns the matrix of numbers corresponding to the
base `b` representation.



Examples
~~~~~~~~


::

    base2dec(['ABC','0','A'],16)




See Also
~~~~~~~~


+ `bin2dec`_ convert from binary to decimal
+ `oct2dec`_ convert from octal to decimal
+ `hex2dec`_ convert from hexadecimal to decimal
+ `dec2bin`_ convert from decimal to binary
+ `dec2oct`_ convert from decimal to octal
+ `dec2hex`_ convert from decimal to hexadecimal


.. _oct2dec: oct2dec.html
.. _hex2dec: hex2dec.html
.. _bin2dec: bin2dec.html
.. _dec2bin: dec2bin.html
.. _dec2hex: dec2hex.html
.. _dec2oct: dec2oct.html


