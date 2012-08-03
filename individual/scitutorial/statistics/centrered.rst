====
"centrered"
====

Last update : 20/12/2004
**wcenter** - center and weight



Calling Sequence
~~~~~~~~~~~~~~~~

s=wcenter(x)
s=wcenter(x,'r') or s=wcenter(x,1)
s=wcenter(x,'c') or s=wcenter(x,2)




Parameters
~~~~~~~~~~


+ **** x: real or complex vector or matrix




Description
~~~~~~~~~~~

This function computes **s** , the weigthed and centred version of the
numerical matrix **x** .

For a vector or a matrix **x** , **s=wcenter(x)** returns in the
**(i,j)** coefficient of the matrix **s** the value
**(x(i,j)-xbar)/sigma** , where **xbar** is the mean of the values of
the coefficients of **x** and **sigma** his standard deviation.

**s=wcenter(x,'r')** (or, equivalently, **s=wcenter(x,1)** ) is the
rowwise centre reduction of the values of **x** . It returns in the
entry **s(i,j)** the value **(x(i,j)-xbarv(j))/sigmav(j)** with
**xbarv(j)** the mean of the values of the **j** column and
**sigmav(j)** the standard deviation of the **j** column of **x** .

**s=wcenter(x,'c')** (or, equivalently, **s=wcenter(x,2)** ) is the
columnwise centre reduction of the values of **x** . It returns in the
entry **s(i,j)** the value **(x(i,j)-xbarh(i))/sigmah(i)** with
**xbarh(i)** the mean of the values of the **i** row and **sigmah(i)**
the standard deviation of the **i** row of **x** .



Examples
~~~~~~~~


::

    
    
    x=[0.2113249 0.0002211 0.6653811;
       0.7560439 0.3303271 0.6283918]
    s=wcenter(x)
    s=wcenter(x,'r')
    s=wcenter(x,'c')
     
      




See Also
~~~~~~~~

` **center** `_,



Author
~~~~~~

Carlos Klimann

.. _
      : ://./statistics/center.htm


