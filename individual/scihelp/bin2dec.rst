


bin2dec
=======

convert from binary to decimal



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=bin2dec(str)




Arguments
~~~~~~~~~

:str a matrix of strings containing only characters '1' and '0'
: :y a matrix of doubles, positive integer values
:



Description
~~~~~~~~~~~

Given `str` a binary string, this function returns `y` the decimal
number whose the binary representation is given by `str` ( `y` and
`str` have the same size).



Examples
~~~~~~~~


::

    // example 1 :
    // '1010110' : is the binary representation of 86 
    str='1010110';
    y=bin2dec(str)
    
    // example 2 :
    // '1011011' : is the binary representation of 91 
    // '1010010' : is the binary representation of 82
    str=['1011011'; '1010010']
    y=bin2dec(str)




See Also
~~~~~~~~


+ `base2dec`_ convert from base b to decimal
+ `oct2dec`_ convert from octal to decimal
+ `hex2dec`_ convert from hexadecimal to decimal
+ `dec2bin`_ convert from decimal to binary
+ `dec2oct`_ convert from decimal to octal
+ `dec2hex`_ convert from decimal to hexadecimal


.. _oct2dec: oct2dec.html
.. _hex2dec: hex2dec.html
.. _dec2bin: dec2bin.html
.. _dec2hex: dec2hex.html
.. _base2dec: base2dec.html
.. _dec2oct: dec2oct.html


