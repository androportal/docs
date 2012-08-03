====
"msd"
====

Last update : 20/12/2004
**msd** - mean squared deviation



Calling Sequence
~~~~~~~~~~~~~~~~

y=msd(x)
y=msd(x,'r') or m=msd(x,1)
y=msd(x,'c') or m=msd(x,2)




Parameters
~~~~~~~~~~


+ **x** real or complex vector or matrix




Description
~~~~~~~~~~~

This function computes the mean squared deviation of the values of a
vector or matrix ** x** .

For a vector or a matrix ** x** , ** y=msd(x) ** returns in the scalar
** y** the mean squared deviation of all the entries of ** x** .

** y=msd(x,'r') ** (or, equivalently, ** y=msd(x,1) ** ) is the
rowwise mean squared deviation. It returns in each entry of the row
vector ** y** the mean squared deviation of each column of ** x ** .

** y=msd(x,'c') ** (or, equivalently, ** m=msd(x,2) ** ) is the
columnwise mean squared deviation. It returns in each entry of the
column vector ** y** the mean squared deviation of each row of ** x**
.



Examples
~~~~~~~~


::

    
    
    
    x=[0.2113249 0.0002211 0.6653811;0.7560439 0.3303271 0.6283918]
    m=msd(x)
    m=msd(x,'r')
    m=msd(x,'c')
     
      




Author
~~~~~~

Carlos Klimann



Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



