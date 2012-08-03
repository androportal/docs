====
"zeropen"
====

Scilab Function Last update : April 1993
**zeropen** - zero pencil



Calling Sequence
~~~~~~~~~~~~~~~~

[Z,U]=zeropen(Sl)




Parameters
~~~~~~~~~~


+ **Sl** : a linear system ( **syslin** list in state-space form
  **[A,B,C,D]** )
+ **Z** : matrix pencil **Z=s*E-A**
+ **U** : square orthogonal matrix




Description
~~~~~~~~~~~

**Z = sE - F** is the zero pencil of the linear system **Sl** with
matrices **[A,B,C,D]** . Utility function.

With **U** row compression of **[B;D]** i.e, **U*[B;D]=[0;*]** ; one
has:


::

    
    
    U*[-sI+A |B;   [ Z |0;      
          C  |D] = [ * |*]
       
        


The zeros of **Z** are the zeros of **Sl** .



See Also
~~~~~~~~

` **systmat** `_,` **kroneck** `_,

.. _
      : ://./control/../linear/kroneck.htm
.. _
      : ://./control/../polynomials/systmat.htm


