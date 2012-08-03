====
"linf"
====

Scilab Function Last update : April 1993
**linf** - infinity norm



Calling Sequence
~~~~~~~~~~~~~~~~

linf(g [,eps],[tol])




Parameters
~~~~~~~~~~


+ **g** : is a **syslin** linear system.
+ **eps** : is error tolerance on n.
+ **tol** : threshold for imaginary axis poles.




Description
~~~~~~~~~~~

returns the L_infinity norm of **g** .


::

    
    
        n=sup [sigmax(g(jw)] 
           w
       
        


(sigmax largest singular value).



See Also
~~~~~~~~

` **h_norm** `_,` **linfn** `_,

.. _
      : ://./robust/linfn.htm
.. _
      : ://./robust/h_norm.htm


