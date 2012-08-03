====
"gamitg"
====

Scilab Function Last update : April 1993
**gamitg** - H-infinity gamma iterations



Calling Sequence
~~~~~~~~~~~~~~~~

[gopt]=gamitg(G,r,prec [,options]);




Parameters
~~~~~~~~~~


+ **G** : **syslin** list (plant realization )
+ **r** : 1x2 row vector (dimension of **G22** )
+ **prec** : desired relative accuracy on the norm
+ **option** : string **'t'**
+ **gopt** : real scalar, optimal H-infinity gain




Description
~~~~~~~~~~~

**gopt=gamitg(G,r,prec [,options])** returns the H-infinity optimal
gain **gopt** .

**G** contains the state-space matrices **[A,B,C,D]** of the plant
with the usual partitions:


::

    
    
       B = ( B1 , B2 ) ,    C = ( C1 ) ,    D = ( D11  D12)
                                ( C2 )          ( D21  D22)
       
        


These partitions are implicitly given in **r** : **r(1)** and **r(2)**
are the dimensions of **D22** (rows x columns)

With **option='t'** , **gamitg** traces each bisection step, i.e.,
displays the lower and upper bounds and the current test point.



See Also
~~~~~~~~

` **ccontrg** `_,` **h_inf** `_,



Author
~~~~~~

P. Gahinet

.. _
      : ://./robust/ccontrg.htm
.. _
      : ://./robust/h_inf.htm


