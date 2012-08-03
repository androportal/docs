====
"boucle"
====

Scilab Function Last update : April 1993
**boucle** - phase portrait of a dynamical system with observer



Calling Sequence
~~~~~~~~~~~~~~~~

[]=boucle(fch,[abruit,xdim,npts,farrow])




Parameters
~~~~~~~~~~


+ **fch** : Scilab macro. **fch** is supposed to be an observed-
  controlled system with noisy output of state dimension 4 ( [x;xchap]
  is of dimension 4). **fch** can be created with the macro **obscont1**
  or can be set to one of the two following string which gives pre
  computed examples

    + **"bcomp" ** : for a non-linear competition model.
    + **"lcomp" ** : for a linear example.

+ **abruit** : give the noise variance.
+ **xdim,npts,farrow** : See portrait




Description
~~~~~~~~~~~

Phase portrait of dynamical systems.



See Also
~~~~~~~~

` **portrait** `_,` **ode** `_,` **obscont1** `_,

.. _
      : ://./tdcs/portrait.htm
.. _
      : ://./tdcs/obscont1.htm
.. _
      : ://./tdcs/../nonlinear/ode.htm


