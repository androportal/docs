


atomsGetLoadedPath
==================

Get the list of loaded external modules



Calling Sequence
~~~~~~~~~~~~~~~~


::

    path = atomsGetLoadedPathPath(module)




Arguments
~~~~~~~~~

:module mx1, mx2, mx3 Matrix of strings : *1st Col.* *Technical name*
  Mandatory *2nd Col.* *Version* Optional If this field is empty or is
  not present, the most recent version is used *3nd Col.* *Section*
  Optional If this field is empty or is not present, "allusers" is used
path The path of the given module:



Description
~~~~~~~~~~~

`atomsGetLoadedPath` returns the path of the module given



Examples
~~~~~~~~


::

    `atomsSetConfig`_("Verbose","True");
    `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org");
    `atomsInstall`_("toolbox_5");
    `atomsLoad`_("toolbox_5");
    
    path = atomsGetLoadedPath("toolbox_5");
    
    `atomsRemove`_("toolbox_5");




See Also
~~~~~~~~


+ `atomsLoad`_ Load one or several external modules
+ `atomsGetLoaded`_ Load one or several external modules
+ `atomsIsLoaded`_ determines whether a module is loaded or not


.. _atomsIsLoaded: atomsIsLoaded.html
.. _atomsGetLoaded: atomsLoad.html


