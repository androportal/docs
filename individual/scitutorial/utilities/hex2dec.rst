====
"hex2dec"
====

Scilab Function Last update : April 1993
**hex2dec** - conversion from hexadecimal representation to integers



Calling Sequence
~~~~~~~~~~~~~~~~

d=hex2dec(h)
d=oct2dec(o)
d=base2dec(s,b)




Parameters
~~~~~~~~~~


+ **d** : matrix of integers
+ **h** : matrix of character strings corresponding to hexadecimal
  representation
+ **o** : matrix of character strings corresponding to octal
  representation
+ **s** : matrix of character strings corresponding to base b
  representation
+ **b** : integer, the base




Description
~~~~~~~~~~~

**hex2dec(x)** returns the matrix of numbers corresponding to the
hexadecimal representation.

**oct2dec(x)** returns the matrix of numbers corresponding to the
octal representation.

**base2dec(x,b)** returns the matrix of numbers corresponding to the
base **b** representation.



Examples
~~~~~~~~


::

    
    
    hex2dec(['ABC','0','A'])
     
      




