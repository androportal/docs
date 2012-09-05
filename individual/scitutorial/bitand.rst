


bitand
======

bitwise AND



Calling Sequence
~~~~~~~~~~~~~~~~


::

    z = bitand(x,y)




Parameters
~~~~~~~~~~

:x : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm hypermatrix
  of doubles or a m-by-n matrix of unsigned integers (uint8, uint16 or
  uint32). Must contain positive integer values.
: :y : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers (uint8,
  uint16 or uint32).
: :z : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers.
:



Description
~~~~~~~~~~~

Given x, y two positive integers, this function returns the decimal
number whose the binary form is the AND of the binary representations
of x and y.

`x`, `y`, `z` have the same size.



Examples
~~~~~~~~


::

    // '1010110' : is the binary representation of 86 
    // '1011011' : is the binary representation of 91   
    // '1010010' : is the binary representation for the AND of binary representation 86 and 91 
    // so the decimal number corresponding to the AND  applied to binary forms 86 and 91 is : 82
    x=86; 
    y=91;
    z=bitand(x,y)
    
    // Compute the bitwise AND of two matrices of doubles.
    x=[12,45];
    y=[25,49];
    z=bitand(x,y)
    
    // Compute the bitwise AND of two matrices of doubles.
    x = [0 1 0 1];
    y = [0 0 1 1];
    z = bitand(x, y)
    expected = [0 0 0 1];
    
    // Compute the bitwise AND of two matrices of integers.
    x = `uint8`_([0 1 0 1]);
    y = `uint8`_([0 0 1 1]);
    z = bitand(x, y)
    
    // The types of x and y cannot be mixed (error).
    x = [0 1 0 1];
    y = `uint8`_([0 0 1 1]);
    // z = bitand(x, y)
    
    //  13 is (01101)_2
    //  27 is (11011)_2
    // AND is (01001)_2 which is 9.
    bitand(`uint8`_(13), `uint8`_(27))
    bitand(13, 27)




See Also
~~~~~~~~


+ `bitor`_ bitwise OR
+ `bin2dec`_ convert from binary to decimal
+ `dec2bin`_ convert from decimal to binary


.. _bitor: bitor.html
.. _dec2bin: dec2bin.html
.. _bin2dec: bin2dec.html


