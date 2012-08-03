====
"isempty"
====

Scilab Function Last update : 15/06/2004
**isempty** - check if a variable is an empty matrix or an empty list



Calling Sequence
~~~~~~~~~~~~~~~~

t=isempty(x)




Parameters
~~~~~~~~~~


+ **x** : vector or matrix or list
+ **t** : a boolean




Description
~~~~~~~~~~~

**isempty(x)** returns true if x is an empty matrix or an empty list.



Examples
~~~~~~~~


::

    
    
    a=1
    isempty(a(2:$))
    isempty(find(rand(1:10)==5))
     
      




