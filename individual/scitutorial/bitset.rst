


bitset
======

set bit at specified position



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = bitset(x,pos)
    y = bitset(x,pos,v)




Parameters
~~~~~~~~~~

:x : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm hypermatrix
  of doubles or a m-by-n matrix of unsigned integers (uint8, uint16 or
  uint32). Must contain positive integer values.
: :pos : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers (uint8,
  uint16 or uint32). Must contain positive integer values. The input
  `pos` must be in the range 1,2,...,bitmax where bitmax is the maximum
  number of bits in x.
: :v : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers (uint8,
  uint16 or uint32). Default v=1. Must contain positive integer values.
: :y : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers.
:



Description
~~~~~~~~~~~

Set the bit at specified position.



Examples
~~~~~~~~


::

    // 9 is (01001)_2
    // We set the 5th bit to 1, which gives
    //      (11001)_2 producing 25
    bitset(`uint8`_(9), 5)
    expected = 25
    
    // Set the 5th bit of 25 to 0.
    bitset(`uint8`_(25), 5, 0)
    expected = 9
    
    // The input can be a positive double
    bitset(25, 5, 0)
    expected = 9




