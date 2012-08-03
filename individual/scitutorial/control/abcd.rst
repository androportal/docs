====
"abcd"
====

Scilab Function Last update : April 1993
**abcd** - state-space matrices



Calling Sequence
~~~~~~~~~~~~~~~~

[A,B,C,D]=abcd(sl)




Parameters
~~~~~~~~~~


+ **sl** : linear system ( **syslin** list) in state-space or transfer
  form
+ **A,B,C,D** : real matrices of appropriate dimensions




Description
~~~~~~~~~~~

returns the **A,B,C,D** matrices from a linear system **Sl** .

Utility function. For transfer matrices **Sl** is converted into
state-space form by **tf2ss** .

The matrices **A,B,C,D** are the elements **2** to **5** of the
**syslin** list **Sl** , i.e. **[A,B,C,D] = Sl(2:5)** .



Examples
~~~~~~~~


::

    
    
    A=diag([1,2,3]);B=[1;1;1];C=[2,2,2];
    sys=syslin('c',A,B,C);
    sys("A")
    sys("C")
    [A1,B1,C1,D1]=abcd(sys);
    A1
    systf=ss2tf(sys);
    [a,b,c,d]=abcd(systf)
    spec(a)
    c*b-C*B
    c*a*b-C*A*B
     
      




See Also
~~~~~~~~

` **syslin** `_,` **ssrand** `_,

.. _
      : ://./control/../elementary/syslin.htm
.. _
      : ://./control/../elementary/ssrand.htm


