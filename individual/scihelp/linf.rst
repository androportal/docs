


linf
====

infinity norm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    linf(g [,eps],[tol])




Arguments
~~~~~~~~~

:g is a `syslin` linear system.
: :eps is error tolerance on n.
: :tol threshold for imaginary axis poles.
:



Description
~~~~~~~~~~~

returns the L_infinity norm of `g`.


::

    n=sup [sigmax(g(jw)] 
       w


(sigmax largest singular value).



See Also
~~~~~~~~


+ `h_norm`_ H-infinity norm
+ `linfn`_ infinity norm


.. _h_norm: h_norm.html
.. _linfn: linfn.html


