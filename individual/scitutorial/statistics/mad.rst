====
"mad"
====

Last update : 20/12/2004
**mad** - mean absolute deviation



Calling Sequence
~~~~~~~~~~~~~~~~

s2=mad(x)
s2=mad(x,'r') or s2=mad(x,1)
s2=mad(x,'c') or s2=mad(x,2)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix




Description
~~~~~~~~~~~

This function computes the mean absolute deviation of a real or
complex vector or matrix ** x** .

For a vector or matrix ** x** , ** s2=mad(x) ** returns in scalar **
s2** the mean absolute deviation of all the entries of ** x** .

** s2=mad(x,'r') ** (or, equivalently, ** s2=mad(x,1)** ) returns in
each entry of the column vector ** s2** the mean absolute deviation of
each column of ** x** .

** s2=mad(x,'c') ** (or, equivalently, ** s2=mad(x,2)** ) returns in
each entry of the column vector ** s2** the mean absolute deviation of
each row of ** x** .



Bibliography
~~~~~~~~~~~~

Reference: Wonacott T.H.& Wonacott R.J. .- Introductory Statistics,
5th edition, John Wiley, 1990.



