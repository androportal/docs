====
"tree2code"
====

Scilab Function Last update : 12/05/2006
**tree2code** - generates ascii definition of a Scilab function



Calling Sequence
~~~~~~~~~~~~~~~~

txt=tree2code(tree,prettyprint)




Parameters
~~~~~~~~~~


+ **tree** : a macro tree (coming from macr2tree)
+ **prettyprint** : optional boolean value

    + **%T** : generated code is indented and beautified
    + **%F** : generated code is not beautified (default)

+ **txt** : a column vector of strings, the text giving the Scilab
  instructions




Description
~~~~~~~~~~~

Given a loaded Scilab function "tree" (returned by macr2tree),
tree2code allows to re-generate the code.



Examples
~~~~~~~~


::

    
    
    tree=macr2tree(cosh);
    txt=tree2code(tree,%T);
    write(%io(2),txt,'(a)');
     
      




See Also
~~~~~~~~

` **macr2tree** `_,



Authors
~~~~~~~

****V.C.


.. _
      : ://./translation/../functions/macr2tree.htm


