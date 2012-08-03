====
"macr2tree"
====

Scilab Function Last update : 13/12/2005
**macr2tree** - function to tree conversion



Calling Sequence
~~~~~~~~~~~~~~~~

t=macr2tree(function-name)




Parameters
~~~~~~~~~~


+ **function-name** : a Scilab macro
+ **t** : a Scilab "tree"




Description
~~~~~~~~~~~

This primitive converts a compiled Scilab function **function-name**
into a tree (imbricated tlists) which codes the internal
representation of the function. For use with **tree2code** .



Examples
~~~~~~~~


::

    
    
    tree=macr2tree(cosh);
    txt=tree2code(tree,%T);
    write(%io(2),txt,'(a)');
    
      




See Also
~~~~~~~~

` **tree2code** `_,



Authors
~~~~~~~

****V.C.


.. _
      : ://./functions/../translation/tree2code.htm


