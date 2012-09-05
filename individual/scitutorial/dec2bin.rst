


dec2bin
=======

convert from decimal to binary



Calling Sequence
~~~~~~~~~~~~~~~~


::

    str=dec2bin(x)
    str=dec2bin(x,n)




Arguments
~~~~~~~~~

:x matrix of doubles, positive integer values
: :n a positive integer
: :str a matrix of strings
:



Description
~~~~~~~~~~~

Given `x`, a positive (or a vector/matix of integers) integer, this
function returns a string (or a column vector of strings) which is the
binary representation of `x.`If dimension of `x` is superior than 1
then each component of the colums vector `str` is the binary
representation of the `x` components (i.e `str(i)` is the binary
representation of `x(i)`).

If the components length of `str` is less than `n` ( i.e length str(i)
< n ), then add to `str` components the characters '0' on the left in
order to have componants length equal to `n.`



Examples
~~~~~~~~


::

    // example 1 :
    x=86;
    str=dec2bin(x)
    
    // example 2 :
    // The binary representation of 86 is: '1010110'.
    // Its length is 7 (less than n).
    // We add to str 8 times the character '0' (on the left).
    x=86;
    n=15;
    str=dec2bin(x,n)
    
    // example 3 :
    x=[12;45;135]
    z=dec2bin(x)




See Also
~~~~~~~~


+ `base2dec`_ convert from base b to decimal
+ `bin2dec`_ convert from binary to decimal
+ `oct2dec`_ convert from octal to decimal
+ `hex2dec`_ convert from hexadecimal to decimal
+ `dec2oct`_ convert from decimal to octal
+ `dec2hex`_ convert from decimal to hexadecimal


.. _oct2dec: oct2dec.html
.. _hex2dec: hex2dec.html
.. _bin2dec: bin2dec.html
.. _dec2hex: dec2hex.html
.. _base2dec: base2dec.html
.. _dec2oct: dec2oct.html


