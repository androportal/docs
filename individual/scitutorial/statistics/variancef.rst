====
"variancef"
====

Last update : July 2000
**variancef** - standard deviation of the values of a vector or matrix



Calling Sequence
~~~~~~~~~~~~~~~~

s=variancef(x,fre)
s=variancef(x,fre,'r') or s=variancef(x,fre,1)
s=variancef(x,fre,'c') or s=variancef(x,fre,2)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix




Description
~~~~~~~~~~~

This function computes the variance of the values of a vector or
matrix **x** , each of them counted with a frequency signaled by the
corresponding values of the integer vector or matrix **fre** with the
same type of **x** .

For a vector or matrix **x** , **s=variancef(x,fre)** (or
**s=variancef(x,fre,'*')** ) returns in scalar **s** the variance of
all the entries of **x** , each value counted with the multiplicity
indicated by the corresponding value of **fre** .

**s=variancef(x,fre,'r')** (or, equivalently, **s=variancef(x,fre,1)**
) returns in each entry of the row vector **s** of type 1xsize(x,'c')
the variance of each column of **x** , each value counted with the
multiplicity indicated by the corresponding value of **fre** .

**s=variancef(x,fre,'c')** (or, equivalently, **s=variancef(x,fre,2)**
) returns in each entry of the column vector **s** of type size(x,'c')
x1 the variance of each row of **x** , each value counted with the
multiplicity indicated by the corresponding value of **fre** .



Examples
~~~~~~~~


::

    
    
    
    x=[0.2113249 0.0002211 0.6653811;0.7560439 0.9546254 0.6283918]
    fre=[1 2 3;3 4 3]
    m=variancef(x,fre)
    m=variancef(x,fre,'r')
    m=variancef(x,fre,'c')
    
     
      




Author
~~~~~~

Carlos Klimann



Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



