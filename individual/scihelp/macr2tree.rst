


macr2tree
=========

function to tree conversion



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=macr2tree(function_name)




Arguments
~~~~~~~~~

:function_name a Scilab macro
: :t a Scilab "tree"
:



Description
~~~~~~~~~~~

This primitive converts a compiled Scilab function `function_name`
into a tree (nested tlists) which codes the internal representation of
the function. For use with `tree2code`.



Examples
~~~~~~~~


::

    tree=macr2tree(`cosh`_);
    txt=`tree2code`_(tree,%T);
    `write`_(%io(2),txt,'(a)');




See Also
~~~~~~~~


+ `tree2code`_ generates ascii definition of a Scilab function


.. _tree2code: tree2code.html


