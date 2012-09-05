


tree2code
=========

generates ascii definition of a Scilab function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    txt=tree2code(tree,prettyprint)




Arguments
~~~~~~~~~

:tree a macro tree (coming from macr2tree)
: :prettyprint optional boolean value
    :%T generated code is indented and beautified
    : :%F generated code is not beautified (default)
    :

: :txt a column vector of strings, the text giving the Scilab
  instructions
:



Description
~~~~~~~~~~~

Given a loaded Scilab function "tree" (returned by macr2tree),
tree2code allows to re-generate the code.



Examples
~~~~~~~~


::

    tree=`macr2tree`_(`cosh`_);
    txt=tree2code(tree,%T);
    `write`_(%io(2),txt,'(a)');




See Also
~~~~~~~~


+ `macr2tree`_ function to tree conversion


.. _macr2tree: macr2tree.html


