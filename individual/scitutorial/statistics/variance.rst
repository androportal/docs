====
"variance"
====

Last update : July 2000
**variance** - variance of the values of a vector or matrix



Calling Sequence
~~~~~~~~~~~~~~~~

s=variance(x)
s=variance(x,'r') or m=variance(x,1)
s=variance(x,'c') or m=variance(x,2)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix




Description
~~~~~~~~~~~

This function computes the variance of the values of a vector or
matrix **x** .

For a vector or a matrix **x** , **s=variance(x)** returns in the
scalar **s** the variance of all the entries of **x** .

**s=variance(x,'r')** (or, equivalently, **s=variance(x,1)** ) is the
rowwise variance. It returns in each entry of the row vector s the
variance of each column of **x** .

**s=variance(x,'c')** (or, equivalently, **s=variance(x,2)** ) is the
columnwise standard deviation. It returns in each entry of the column
vector **s** the variance of each row of **x** .



Examples
~~~~~~~~


::

    
    
    
    x=[0.2113249 0.0002211 0.6653811;0.7560439 0.4453586 0.6283918]
    s=variance(x)
    s=variance(x,'r')
    s=variance(x,'c')
    
     
      




Author
~~~~~~

Carlos Klimann



Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



