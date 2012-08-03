====
"harmean"
====

Last update : 20/12/2004
**harmean** - harmonic mean



Calling Sequence
~~~~~~~~~~~~~~~~

hm=harmean(x)
hm=harmean(x,'r')(or, equivalently, hm=harmean(x,1))
hm=harmean(x,'c')(or, equivalently, hm=harmean(x,2))




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix




Description
~~~~~~~~~~~

This function computes the harmonic mean of a vector or matrix ** x**
. For a vector or matrix ** x** , ** hm=harmean(x) ** returns in
scalar ** hm** the harmonic mean of all the entries of ** x** .

** hm=harmean(x,'r') ** (or, equivalently, ** hm=harmean(x,1) ** )
returns in each entry of the row vector ** hm** the harmonic mean of
each column of ** x** .

** hm=harmean(x,'c') ** (or, equivalently, ** hm=harmean(x,2) ** )
returns in each entry of the column vector ** hm** the harmonic mean
of each row of ** x ** .



Author
~~~~~~

Carlos Klimann



Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



