


bitxor
======

bitwise XOR



Calling Sequence
~~~~~~~~~~~~~~~~


::

    z = bitxor(x,y)




Parameters
~~~~~~~~~~

:x : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm hypermatrix
  of doubles or a m-by-n matrix of unsigned integers (uint8, uint16 or
  uint32). Must contain positive integer values.
: :y : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers (uint8,
  uint16 or uint32). Must contain positive integer values.
: :z : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers.
:



Description
~~~~~~~~~~~

Given x, y two positive integers, this function returns the decimal
number whose the binary form is the XOR of the binary representations
of x and y.





Examples
~~~~~~~~


::

    // Compute the bitwise XOR of two matrices of doubles.
    x = [0 1 0 1];
    y = [0 0 1 1];
    z = bitxor(x, y)
    expected = [0 1 1 1];
    
    // Compute the bitwise XOR of two matrices of integers.
    x = `uint8`_([0 1 0 1]);
    y = `uint8`_([0 0 1 1]);
    z = bitxor(x, y)
    
    // The types of x and y cannot be mixed (error).
    x = [0 1 0 1];
    y = `uint8`_([0 0 1 1]);
    // z = bitxor(x, y)
    
    //  13 is (01101)_2
    //  27 is (11011)_2
    // XOR is (10110)_2 which is 22.
    bitxor(`uint8`_(13), `uint8`_(27))
    bitxor(13, 27)




