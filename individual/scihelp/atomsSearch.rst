


atomsSearch
===========

Searches for external modules.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result = atomsSearch(pattern)




Arguments
~~~~~~~~~

:pattern String : The pattern to search for.
: :result
:



Description
~~~~~~~~~~~

`atomsSearch` searches for packages matching one of the patterns
supplied as input argument.



Examples
~~~~~~~~


::

    `atomsSetConfig`_("Verbose","True");
    `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org");
    atomsSearch("toolbox");




See Also
~~~~~~~~


+ `atomsList`_ List available external modules


.. _atomsList: atomsList.html


