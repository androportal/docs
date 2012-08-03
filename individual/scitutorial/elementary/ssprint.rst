====
"ssprint"
====

Scilab Function Last update : April 1993
**ssprint** - pretty print for linear system



Calling Sequence
~~~~~~~~~~~~~~~~

ssprint(sl [,out])




Parameters
~~~~~~~~~~


+ **sl** : list ( **syslin** list)
+ **out** : output (default value **out=%io(2)** )




Description
~~~~~~~~~~~

pretty print of a linear system in state-space form **sl=(A,B,C,D)
syslin** list.



Examples
~~~~~~~~


::

    
    
     a=[1 1;0 1];b=[0 1;1 0];c=[1,1];d=[3,2];
     ssprint(syslin('c',a,b,c,d))
     ssprint(syslin('d',a,b,c,d))
     
      




See Also
~~~~~~~~

` **texprint** `_,

.. _
      : ://./elementary/../translation/texprint.htm


