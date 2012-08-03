====
"center"
====

Last update : 20/12/2004
**center** - center



Calling Sequence
~~~~~~~~~~~~~~~~

s=center(x)
s=center(x,'r') or s=center(x,1)
s=center(x,'c') or s=center(x,2)




Parameters
~~~~~~~~~~


+ **** x: real or complex vector or matrix




Description
~~~~~~~~~~~

This function computes **s** , the centred version of the numerical
matrix **x** . For a vector or a matrix **x** , **s=center(x)**
returns in the **(i,j)** coefficient of the matrix **s** the value
**(x(i,j)-xbar)** , where ** xbar** is the mean of the values of the
coefficients of **x** . **s=center(x,'r')** (or, equivalently,
**s=center(x,1)** ) is the rowwise center reduction of the values of
**x** . It returns in the entry ** s(i,j)** the value
**(x(i,j)-xbarv(j))(j)** with **xbarv(j)** the mean of the values of
the **j** column. **s=center(x,'c')** (or, equivalently,
**s=center(x,2)** ) is the columnwise center reduction of the values
of **x** . It returns in the entry **s(i,j)** the value
**(x(i,j)-xbarh(i)))** with **xbarh(i)** the mean of the values of the
**i** row.



Examples
~~~~~~~~


::

    
    
    x=[0.2113249  0.0002211 0.6653811;
       0.7560439  0.3303271 0.6283918]
    s=center(x)
    s=center(x,'r')
    s=center(x,'c')
    
     
      




See Also
~~~~~~~~

` **wcenter** `_,



Author
~~~~~~

Carlos Klimann

.. _
      : ://./statistics/centrered.htm


