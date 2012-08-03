====
"fspecg"
====

Scilab Function Last update : April 1993
**fspecg** - stable factorization



Calling Sequence
~~~~~~~~~~~~~~~~

[gm]=fspecg(g).




Parameters
~~~~~~~~~~


+ **g,gm** : **syslin** lists (linear systems in state-space
  representation)




Description
~~~~~~~~~~~

returns **gm** with **gm** and **gm^-1** stable such that:


::

    
    
    gtild(g)*g = gtild(gm)*gm
       
        


**g** and **gm** are continuous-time linear systems in state-space
form.

Imaginary-axis poles are forbidden.



