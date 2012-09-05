


bitcmp
======

bitwise complement



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = bitcmp(x,n)




Parameters
~~~~~~~~~~

:x : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm hypermatrix
  of doubles or a m-by-n matrix of unsigned integers (uint8, uint16 or
  uint32). Must contain positive integer values.
: :n : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers (uint8,
  uint16 or uint32). The input `n` must be in the range 1,2,...,bitmax
  where bitmax is the maximum number of bits in x. Must contain positive
  integer values.
: :y : a m-by-n matrix of doubles or a m1-by-m2-by-...-by-mm
  hypermatrix of doubles or a m-by-n matrix of unsigned integers.
:



Description
~~~~~~~~~~~

Given an unsigned integer `x`, this function returns the unsigned
integer which is the integer corresponding to the complementary of the
binary form of `x`.

The integer `n` sets the maximum number of bits.

If the bits number of the `x` binary representation is less than the
bitmax number (8,16 or 32) then the bits '1' are added to the
complementary in order to have bitmax number (8, 16 or 32) for the
complementary.



Examples
~~~~~~~~


::

    // 13 is (1101)_2
    // We insert zeros in the beginning to get a 8-bit number:
    // (00001101)_2
    // The 8-bits complement is then (11110010)_2
    // which is 242
    bitcmp(13,8)
    expected = 242
    
    // The input argument can be an unsigned int
    bitcmp(`uint8`_(99),8)
    expected = 156




