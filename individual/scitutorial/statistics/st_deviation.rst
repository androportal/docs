====
"st_deviation"
====

Scilab Function Last update : 31/10/2003
**st_deviation** - standard deviation (row or column-wise) of
vector/matrix entries

**stdev** - standard deviation (row or column-wise) of vector/matrix
entries



Calling Sequence
~~~~~~~~~~~~~~~~

y=st_deviation(x)
y=st_deviation(x,'r')
y=st_deviation(x,'c')
y=stdev(x)
y=stdev(x,'r')
y=stdev(x,'c')




Parameters
~~~~~~~~~~


+ **x** : real vector or matrix
+ **y** : scalar or vector




Description
~~~~~~~~~~~

st_deviation computes the "sample" standard deviation, that is, it is
normalized by N-1, where N is the sequence length.

For a vector or a matrix **x** , **y=st_deviation(x)** returns in the
scalar **y** the standard deviation of all the entries of **x** .

**y=st_deviation(x,'r')** (or, equivalently, **y=st_deviation(x,1)** )
is the rowwise standard deviation. It returns in each entry of the
column vector **y** the standard deviation of each row of **x** .

**y=st_deviation(x,'c')** (or, equivalently, **y=st_deviation(x,2)** )
is the columnwise st_deviation. It returns in each entry of the row
vector **y** the standard deviation of each column of **x** .



Examples
~~~~~~~~


::

    
    
    A=[1,2,10;7,7.1,7.01];
    st_deviation(A)
    st_deviation(A,'r')
    st_deviation(A,'c')
     
      




See Also
~~~~~~~~

` **sum** `_,` **median** `_,` **mean** `_,` **nanstdev** `_,`
**stdevf** `_,

.. _
      : ://./statistics/median.htm
.. _
      : ://./statistics/stdevf.htm
.. _
      : ://./statistics/nanstdev.htm
.. _
      : ://./statistics/mean.htm
.. _
      : ://./statistics/../elementary/sum.htm


