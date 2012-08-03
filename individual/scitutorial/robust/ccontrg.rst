====
"ccontrg"
====

Scilab Function Last update : April 1993
**ccontrg** - central H-infinity controller



Calling Sequence
~~~~~~~~~~~~~~~~

[K]=ccontrg(P,r,gamma);




Parameters
~~~~~~~~~~


+ **P** : **syslin** list (linear system in state-space
  representation)
+ **r** : 1x2 row vector, dimension of the 2,2 part of **P**
+ **gamma** : real number




Description
~~~~~~~~~~~

returns a realization **K** of the central controller for the general
standard problem in state-space form.

Note that gamma must be > gopt (ouput of **gamitg** )

P contains the parameters of plant realization **(A,B,C,D)** (
**syslin** list) with


::

    
    
    B = ( B1 , B2 ) ,        C= ( C1 ) ,    D = ( D11  D12)
                                ( C2 )          ( D21  D22)
       
        


**r(1)** and **r(2)** are the dimensions of **D22** (rows x columns)



See Also
~~~~~~~~

` **gamitg** `_,` **h_inf** `_,



Author
~~~~~~

P. Gahinet (INRIA);

.. _
      : ://./robust/gamitg.htm
.. _
      : ://./robust/h_inf.htm


