====
"cmoment"
====

Last update : 16/12/2004
**cmoment** - central moments of all orders



Calling Sequence
~~~~~~~~~~~~~~~~

mom=cmoment(x,ord)
mom=cmoment(x,ord,'r') or mom=cmoment(x,ord,1)
mom=cmoment(x,ord,'c') or mom=cmoment(x,ord,2)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix
+ **ord** : positive integer




Description
~~~~~~~~~~~

cmoment **(x,ord)** is the central moment or order ord of the elements
of **x** . If a third argument of type string **'r'** (or **1** ) or
**'c'** (or ** 2** ) is used, we get in the first case, a row vector
** mom** such that **mom(j)** contains the central moment of order
**ord** of the **j** column of **x** . **cmoment(x,ord,'c')** is used
in the same way for the central moments in the rows.



References
~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, J.Wiley &
Sons, 1990.



Examples
~~~~~~~~


::

    
    
    x=[0.2113249 0.0002211 0.6653811;
       0.7560439 0.3303271 0.6283918]
    mom=cmoment(x,3)
    mom=cmoment(x,2,'r')
    mom=cmoment(x,3,'c')
     
      




See Also
~~~~~~~~

` **sum** `_,` **median** `_,` **st_deviation** `_,` **mean** `_,`
**meanf** `_,` **moment** `_,` **nanmean** `_,` **nanmeanf** `_,`
**stdev** `_,` **stdevf** `_,` **variance** `_,` **variancef** `_,`
**nanstdev** `_,



Author
~~~~~~

Carlos Klimann

.. _
      : ://./statistics/median.htm
.. _
      : ://./statistics/st_deviation.htm
.. _
      : ://./statistics/moment.htm
.. _
      : ://./statistics/nanstdev.htm
.. _
      : ://./statistics/nanmean.htm
.. _
      : ://./statistics/nanmeanf.htm
.. _
      : ://./statistics/stdevf.htm
.. _
      : ://./statistics/variancef.htm
.. _
      : ://./statistics/meanf.htm
.. _
      : ://./statistics/variance.htm
.. _
      : ://./statistics/mean.htm
.. _
      : ://./statistics/../elementary/sum.htm


