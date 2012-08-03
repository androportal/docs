====
"lotest"
====

Scilab Function Last update : April 1993
**lotest** - demo of the Lorenz attractor



Calling Sequence
~~~~~~~~~~~~~~~~

[]=lotest([f_l,odem,xdim,npts,pinit])
[y]=lorenz(t,x)
[]=ilo(sig,ro,beta)
[]=ilof(sig,ro,beta)




Parameters
~~~~~~~~~~


+ **f_l** : can be **"loren"** or **lorenz** . it is the name of the
  external for the Lorenz system. **"loren"** will use a Fortran coded
  version of the lorenz system and arnold will and **loren** will use a
  Scilab coded version. **lorentz** is the Scilab macro which code the
  lorenz system. This macro is loaded when calling **lotest** .
+ **ilof, ilo** :are used to fix the parameters of the Fortran and
  Scilab code version of the Lorenz system.
+ **odem,xdim,npts** : are optional arguments. Their meaning and
  syntax can be found in the portr3d help




Description
~~~~~~~~~~~

A call to the function **lotest()** will interactively display a phase
portrait of a the following dynamical system


::

    
    
     y(1)=sig*(x(2)-x(1));
     y(2)=ro*x(1) -x(2)-x(1)*x(3);
     y(3)=-beta*x(3)+x(1)*x(2);
       
        




See Also
~~~~~~~~

` **portr3d** `_,` **ode** `_,` **chaintest** `_,` **lotest** `_,

.. _
      : ://./tdcs/portr3d.htm
.. _
      : ://./tdcs/chaintest.htm
.. _
      : ://./tdcs/lotest.htm
.. _
      : ://./tdcs/../nonlinear/ode.htm


