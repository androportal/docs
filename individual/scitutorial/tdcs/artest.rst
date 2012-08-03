====
"artest"
====

Scilab Function Last update : April 1993
**artest** - arnold dynamical system



Calling Sequence
~~~~~~~~~~~~~~~~

artest(f_l,[odem,xdim,npts])
arnold(t,x)
iarf([a])




Parameters
~~~~~~~~~~


+ **f_l** : can be "arnold" or arnold. It is the name of the external
  for the arnold system. If **f_l** is set to "arnold" a Fortran coded
  version of the arnold system where a(1:6)=1 will be used and if
  **f_l** is set to arnold a Scilab coded version will be used .
  **arnold** is a Scilab macro coding the Arnold system. This macro is
  loaded when calling **artest** .
+ **iarf** : is used to fix the values of **a** in the Scilab coded
  case. **a** is a vector of size 6.
+ **odem,xdim,npts** : are optional arguments. Their meaning and
  syntax can be found in the **portr3d** help




Description
~~~~~~~~~~~

A call to the function **artest()** will interactively display a phase
portrait of a the following dynamical system :


::

    
    
          ydot(1)=a(1)*cos(y(2)) +a(2)*sin(y(3))
          ydot(2)=a(3)*cos(y(3)) +a(4)*sin(y(1))
          ydot(3)=a(5)*cos(y(1)) +a(6)*sin(y(2))
       
        




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


