====
"pol2tex"
====

Scilab Function Last update : April 1993
**pol2tex** - convert polynomial to TeX format



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=pol2tex(x)




Parameters
~~~~~~~~~~


+ **x** : polynomial
+ **y** : list




Description
~~~~~~~~~~~

Latex source code for the polynomial **x** . (For use with
**texprint** )



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    p=s^3+2*s-5;
    pol2tex(p)
     
      




See Also
~~~~~~~~

` **texprint** `_,

.. _
      : ://./translation/texprint.htm


