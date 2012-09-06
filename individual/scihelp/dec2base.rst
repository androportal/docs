


dec2base
========

Convert decimal to base N number in string



Calling Sequence
~~~~~~~~~~~~~~~~


::

    str = dec2base(d, base)



::

    str = dec2base(d, base, n)




Arguments
~~~~~~~~~

:str matrix of strings corresponding to "base" representation
: :base 1-by-1 matrix of doubles, positive integer value, the base
: :d matrix of doubles, positive integer values
:



Description
~~~~~~~~~~~

`str = dec2base(d, base)` converts the nonnegative integer values of
`d` to the specified base `base`.

`d` must have a nonnegative integers smaller than 2^52, and `base`
must be an integer between 2 and 36.

The returned argument `str` is a matrix of strings.

`str = dec2base(d, base, n)` produces a representation with at least
`n` digits.



Examples
~~~~~~~~


::

    for b = 2:36
     `disp`_( dec2base(666, b) )
    end




See Also
~~~~~~~~


+ `base2dec`_ convert from base b to decimal
+ `bin2dec`_ convert from binary to decimal
+ `oct2dec`_ convert from octal to decimal
+ `hex2dec`_ convert from hexadecimal to decimal
+ `dec2bin`_ convert from decimal to binary
+ `dec2oct`_ convert from decimal to octal
+ `dec2hex`_ convert from decimal to hexadecimal




History
~~~~~~~
Version Description 5.4.0 This function was added in Scilab 5.4.0
.. _oct2dec: oct2dec.html
.. _hex2dec: hex2dec.html
.. _bin2dec: bin2dec.html
.. _dec2bin: dec2bin.html
.. _dec2hex: dec2hex.html
.. _base2dec: base2dec.html
.. _dec2oct: dec2oct.html


