====
"logspace"
====

Scilab Function Last update : April 1993
**logspace** - logarithmically spaced vector



Calling Sequence
~~~~~~~~~~~~~~~~

logspace(d1,d2, [n])




Parameters
~~~~~~~~~~


+ **d1,d2** : real or complex scalar (special meaning for **%pi** )
+ **n** : integer (number of values) (default value = 50)




Description
~~~~~~~~~~~

returns a row vector of **n** logarithmically equally spaced points
between **10^d1** and **10^d2** . If **d2=%pi** then the points are
between **10^d1** and **pi** .



Examples
~~~~~~~~


::

    
    
    logspace(1,2,10)
     
      




See Also
~~~~~~~~

` **linspace** `_,

.. _
      : ://./elementary/linspace.htm


