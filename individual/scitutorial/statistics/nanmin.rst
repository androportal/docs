====
"nanmin"
====

Last update : 20/12/2004
**nanmin** - min (ignoring Nan's)



Calling Sequence
~~~~~~~~~~~~~~~~

[m,index]=nanmin(x)
[m,index]=nanmin(x,'r')
[m,index]=nanmin(x,'c')




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix




Description
~~~~~~~~~~~

This function gives for a real or a numerical matrix **x** his largest
element ** m** (but ignoring the NANs).

For ** x** , a numerical vector or matrix, ** m=nanmin(x) ** returns
in scalar ** m** the largest element of ** x** (ignoring the NANs).
The form **[m,index] =nanmin(x,orient) ** gives in addition of the
value of the largest element of ** x** (ignoring the NANs) in scalar
** m** , the index of this element in ** x** , as a 2-vector.

**m=nanmin(x,'r') ** gives in the 1xsize(x,2) matrix **m** the largest
elements (ignoring the NANs) of each column of ** x** . If the form **
[m,index]=nanmin(x,'r') ** is used, the elements of the 1xsize(x,2)
matrix index are the indexes of the largest elements (ignoring the
NANs) of each column of x in the corresponding column.

m=nanmin(x,'c') gives in the size(x,2)x1 matrix m the largest elements
(ignoring the NANs) of each row of x. If the form
[m,index]=nanmin(x,'c') is used, the elements of the size(x,2)x1
matrix index are the indexes of the largest elements (ignoring the
NANs) of each row of x in the corresponding row.

In Labostat, NAN values stand for missing values in tables.



Examples
~~~~~~~~


::

    
    
    x=[0.2113249 %nan 0.6653811;0.7560439 0.3303271 0.6283918]
    m=nanmin(x)
    m=nanmin(x,'r')
    m=nanmin(x,'c')
     
      




Author
~~~~~~

Carlos Klimann



Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



