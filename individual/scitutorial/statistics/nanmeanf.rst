====
"nanmeanf"
====

Last update : 20/12/2004
**nanmeanf** - mean (ignoring Nan's) with a given frequency.



Calling Sequence
~~~~~~~~~~~~~~~~

m=nanmean(val,fre)
m=nanmean(val,fre,'r') (or m=nanmean(val,fre,1))
m=nanmean(val,fre,'c') (or m=nanmean(val,fre,2))




Parameters
~~~~~~~~~~


+ **val** : real or complex vector or matrix
+ **fre** : integer vector or matrix with same dimensions than val




Description
~~~~~~~~~~~

This function returns in scalar ** m** the mean of the values
(ignoring the NANs) of a vector or matrix **val** , each counted with
a frequency signaled by the corresponding values of the integer vector
or matrix **fre** with the same type of **val** .

For a vector or matrix ** val** , ** m=nanmeanf(val,fre)** or **
m=nanmeanf(val,fre,'*')** returns in scalar ** m** the mean of all the
entries (ignoring the NANs) of ** val** , each value counted with the
multiplicity indicated by the corresponding value of ** fre** .

**m=nanmeanf(val,fre,'r')** (or, equivalently,
**m=nanmeanf(val,fre,1)** ) returns in each entry of the row vector **
m** of type 1xsize(val,'c') the mean of each column of val (ignoring
the NANs), each value counted with the multiplicity indicated by the
corresponding value of ** fre** .

**m=nanmeanf(val,fre,'c')** (or, equivalently,
**m=nanmeanf(val,fre,2)** ) returns in each entry of the column vector
m of type size(val,'c')x1 the mean of each row of val (ignoring the
NANs), each value counted with the multiplicity indicated by the
corresponding value of fre.

In Labostat, NAN values stand for missing values in tables.



Examples
~~~~~~~~


::

    
    
    x=[0.2113249 %nan 0.6653811;0.7560439 0.3303271 0.6283918]
    fre=[34 12 25;12 23 5]
    m=nanmeanf(x,fre)
    m=nanmeanf(x,fre,1)
    m=nanmeanf(x,fre,2)
     
      




Author
~~~~~~

Carlos Klimann



Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



