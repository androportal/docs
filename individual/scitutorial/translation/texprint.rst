====
"texprint"
====

Scilab Function Last update : April 1993
**texprint** - TeX output of Scilab object



Calling Sequence
~~~~~~~~~~~~~~~~

[text]= texprint(a)




Parameters
~~~~~~~~~~


+ **a** : Scilab object
+ **text** : list




Description
~~~~~~~~~~~

returns the Tex source code of the Scilab variable **a** . **a** is a
matrix (constant, polynomial, rational) or a linear system (
**syslin** list).



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    texprint([1/s,s^2])
     
      




See Also
~~~~~~~~

` **pol2tex** `_,` **pol2str** `_,

.. _
      : ://./translation/pol2tex.htm
.. _
      : ://./translation/../polynomials/pol2str.htm


