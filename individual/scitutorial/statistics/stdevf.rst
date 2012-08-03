====
"stdevf"
====

Last update : 20/12/2004
**stdevf** - standard deviation



Calling Sequence
~~~~~~~~~~~~~~~~

s=stdevf(x,fre)
s=stdevf(x,fre,'r') or s=stdevf(x,fre,1)
s=stdevf(x,fre,'c') or s=stdevf(x,fre,2)




Parameters
~~~~~~~~~~


+ **x** real or complex vector or matrix




Description
~~~~~~~~~~~

This function computes the standard deviation of the values of a
vector or matrix ** x** , each of them counted with a frequency given
by the corresponding values of the integer vector or matrix ** fre**
who has the same type of ** x** .

For a vector or matrix ** x** , s=stdevf(x,fre) (or **
s=stdevf(x,fre,'*') ** returns in scalar ** s** the standard deviation
of all the entries of ** x** , each value counted with the
multiplicity indicated by the corresponding value of ** fre** .

**s=stdevf(x,fre,'r')** (or, equivalently, **s=stdevf(x,fre,1)** )
returns in each entry of the row vector ** s** of type 1xsize(x,'c')
the standard deviation of each column of ** x** , each value counted
with the multiplicity indicated by the corresponding value of ** fre**
.

**s=stdevf(x,fre,'c')** (or, equivalently, ** s=stdevf(x,fre,2)** )
returns in each entry of the column vector ** s** of type
size(x,'c')x1 the standard deviation of each row of ** x** , each
value counted with the multiplicity indicated by the corresponding
value of ** fre** .



Examples
~~~~~~~~


::

    
    
    
    x=[0.2113249 0.0002211 0.6653811;0.7560439 0.9546254 0.6283918]
    fre=[1 2 3;3 4 3]
    m=stdevf(x,fre)
    m=stdevf(x,fre,'r')
    m=stdevf(x,fre,'c')
    
     
      




Author
~~~~~~

Carlos Klimann



Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



