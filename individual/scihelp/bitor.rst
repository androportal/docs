


bitor
=====

bitwise OR



Calling Sequence
~~~~~~~~~~~~~~~~


::

    z = bitor(x,y)




Parameters
~~~~~~~~~~

:x : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm hypermatrix
  of doubles or a m-by-n matrix of unsigned integers (uint8, uint16 or
  uint32). Must contain positive integer values.
: :y : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers (uint8,
  uint16 or uint32). Must contain positive integer values.
: :z : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of integers.
:



Description
~~~~~~~~~~~

Given x, y two positive integers, this function returns the decimal
number whose the binary form is the OR of the binary representations
of x and y.

`x`, `y`, `z` have the same size.



Examples
~~~~~~~~


::

    // '110000' : is the binary representation of 48 
    // '100101' : is the binary representation of 37   
    // '110101' : is the binary representation for the OR applied to the binary forms 48 and 37 
    // so the decimal number corresponding to the OR  applied to binary forms 48 and 37 is : 53
    x=48; 
    y=37;
    z=bitor(x,y)
    
    // Compute the bitwise OR of two matrices of doubles.
    x=[12,45]; 
    y=[25,49];
    z=bitor(x,y)
    
    // Compute the bitwise OR of two matrices of doubles.
    x = [0 1 0 1];
    y = [0 0 1 1];
    z = bitor(x, y)
    expected = [0 1 1 1];
    
    // Compute the bitwise OR of two matrices of integers.
    x = `uint8`_([0 1 0 1]);
    y = `uint8`_([0 0 1 1]);
    z = bitor(x, y)
    
    // The types of x and y cannot be mixed (error).
    x = [0 1 0 1];
    y = `uint8`_([0 0 1 1]);
    // z = bitor(x, y)
    
    //  13 is (01101)_2
    //  27 is (11011)_2
    //  OR is (11111)_2 which is 31.
    bitor(`uint8`_(13), `uint8`_(27))
    bitor(13, 27)




See Also
~~~~~~~~


+ `bitand`_ bitwise AND
+ `bin2dec`_ convert from binary to decimal
+ `dec2bin`_ convert from decimal to binary


.. _bitand: bitand.html
.. _dec2bin: dec2bin.html
.. _bin2dec: bin2dec.html


