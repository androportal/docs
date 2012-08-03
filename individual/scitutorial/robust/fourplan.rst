====
"fourplan"
====

Scilab Function Last update : April 1993
**fourplan** - augmented plant to four plants



Calling Sequence
~~~~~~~~~~~~~~~~

[P11,P12,P21,P22]=fourplan(P,r)




Parameters
~~~~~~~~~~


+ **P** : **syslin** list (linear system)
+ **r** : 1x2 row vector, dimension of **P22**
+ **P11,P12,P21,P22** : **syslin** lists.




Description
~~~~~~~~~~~

Utility function.

**P** being partitioned as follows:


::

    
    
    P=[ P11 P12;
        P21 P22]  
       
        


with **size(P22)=r** this function returns the four linear systems
**P11,P12,P21,P22** .



See Also
~~~~~~~~

` **lqg** `_,` **lqg2stan** `_,` **lqr** `_,` **lqe** `_,` **lft** `_,

.. _
      : ://./robust/lft.htm
.. _
      : ://./robust/../control/lqg2stan.htm
.. _
      : ://./robust/../control/lqg.htm
.. _
      : ://./robust/../control/lqr.htm
.. _
      : ://./robust/../control/lqe.htm


