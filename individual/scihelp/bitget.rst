


bitget
======

bit at specified position



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = bitget(x,pos)




Parameters
~~~~~~~~~~

:x : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm hypermatrix
  of doubles or a m-by-n matrix of unsigned integers (uint8, uint16 or
  uint32). Must contain positive integer values.
: :pos : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers (uint8,
  uint16 or uint32). The input `pos` must be in the range 1,2,...,bitmax
  where bitmax is the maximum number of bits in x. Must contain positive
  integer values.
: :y : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers.
:



Description
~~~~~~~~~~~

Given an unsigned integer `x`, this function returns an unsigned
integer (0 or 1) which is the bit number `pos` from the representation
binary of `x`.



Examples
~~~~~~~~


::

    // 19 is (10011)_2
    // The 2nd bit is 1 (starting from the end).
    x=`uint8`_(19);
    pos=2;
    y = bitget(x,pos)
    expected = 1;
    
    // 13 is (1101)_2
    `dec2bin`_(13)
    bitget(`uint8`_(13),4:-1:1)
    
    // The input x can be a positive double
    bitget(13,4:-1:1)




