


plzr
====

pole-zero plot



Calling Sequence
~~~~~~~~~~~~~~~~


::

    plzr(sl)




Arguments
~~~~~~~~~

:sl list ( `syslin`)
:



Description
~~~~~~~~~~~

produces a pole-zero plot of the linear system `sl` ( `syslin` list)



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    n=[1+s   2+3*s+4*s^2        5; 0        1-s             s];
    d=[1+3*s   5-s^3           s+1;1+s     1+s+s^2      3*s-1];
    h=`syslin`_('c',n./d); 
    plzr(h);




See Also
~~~~~~~~


+ `trzeros`_ transmission zeros and normal rank
+ `roots`_ roots of polynomials
+ `syslin`_ linear system definition


.. _trzeros: trzeros.html
.. _syslin: syslin.html
.. _roots: roots.html


