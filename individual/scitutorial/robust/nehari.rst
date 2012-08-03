====
"nehari"
====

Scilab Function Last update : April 1993
**nehari** - Nehari approximant



Calling Sequence
~~~~~~~~~~~~~~~~

[x]=nehari(R [,tol])




Parameters
~~~~~~~~~~


+ **R** : linear system ( **syslin** list)
+ **x** : linear system ( **syslin** list)
+ **tol** : optional threshold




Description
~~~~~~~~~~~

**[x]=nehari(R [,tol])returns** the Nehari approximant of **R** .

**R** = linear system in state-space representation ( **syslin**
list).

**R** is strictly proper and **- R~** is stable (i.e. **R** is anti
stable).


::

    
    
        || R - X ||oo = min || R - Y ||oo
                      Y in Hoo
       
        




