====
"iqr"
====

Last update : 20/12/2004
**iqr** - interquartile range



Calling Sequence
~~~~~~~~~~~~~~~~

q=iqr(x)
q=iqr(x,'r') (or, equivalently, q=iqr(x,1))
q=iqr(x,'c') (or, equivalently, q=iqr(x,2))




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix




Description
~~~~~~~~~~~

This function computes the interquartile range IQR= upper quartile -
lower quartile of a vector or a matrix ** x ** .

For a vector or a matrix ** x** , ** q=iqr(x)** returns in the scalar
** q** the interquartile range of all the entries of ** x** .

** q=iqr(x,'r') ** (or, equivalently, **q=iqr(x,1)** ) is the rowwise
interquartile range. It returns in each entry of the row vector ** q**
the interquartile range of each column of ** x** .

** q=iqr(x,'c') ** (or, equivalently, **q=iqr(x,2)** ) is the
columnwise interquartile range. It returns in each entry of the column
vector ** q** the interquartile range of each row of ** x** .



Author
~~~~~~

Carlos Klimann



Bibliography
~~~~~~~~~~~~

Wonacott, T.H.Wonacott, R.J.; Introductory Statistics, J.Wiley-Sons,
1990.



