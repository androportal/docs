====
"obscont1"
====

Scilab Function Last update : April 1993
**obscont1** - a controlled-observed system



Calling Sequence
~~~~~~~~~~~~~~~~

[macr]=obscont1(sysn)




Parameters
~~~~~~~~~~


+ **sysn** : A Scilab string which gives the name of the controlled
  system.
+ **gaincom,gainobs** : column vectors giving the requested gains
+ **macr** : a new Scilab function which simulates the controlled
  observed system.

::

    
    
    [x1dot]=macr(t,x1,abruit,pas,n)
    x1=[x;xchap],
       
              






Description
~~~~~~~~~~~

This macros return a new function which computes the controlled
observed version of a linearised system around the **(xe,ue)** point.

before calling this function, a noise vector **br** should be created.
the equilibrium point **(xe,ue)** should be given as a global Scilab.
the linearised system $f,g,h$ and the two gain matrices **l,k** are
returned as global Scilab data.



