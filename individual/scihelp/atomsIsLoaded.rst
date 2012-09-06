


atomsIsLoaded
=============

determines whether a module is loaded or not



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result = atomsIsLoaded(modules)




Arguments
~~~~~~~~~

:modules mx1, mx2 Matrix of strings: *1st Col.* *Technical name*
  Mandatory *2nd Col.* *Version* Optional If this field is empty or is
  not present, module's version is ignored. *3rd Col.* *Section*
  Optional If this field is empty or is not present, module's section is
  ignored.
: :result mx1 boolean matrix
:



Description
~~~~~~~~~~~

`atomsIsLoaded` determines whether a module is loaded or not.



Examples
~~~~~~~~


::

    `atomsSetConfig`_("Verbose","True");
    `atomsRepositoryAdd`_("http://scene2.test.atoms.scilab.org");
    
    // Install toolbox_4, both 1.0 and 1.1 version
    `atomsInstall`_(["toolbox_4" "1.0"],"user");
    
    // Load the version 1.0
    `atomsLoad`_(["toolbox_4" "1.0"]);
    
    // Ignore the module's version
    atomsIsLoaded("toolbox_4")
    
    // With a specific version
    atomsIsLoaded(["toolbox_4" "1.0"])
    
    // Check several modules
    atomsIsLoaded( ["toolbox_4" "1.0" ; "toolbox_4" "1.1" ; "toolbox_1" "1.0" ] )
    
    // Some cleaning ...
    `atomsRepositoryDel`_("http://scene2.test.atoms.scilab.org");
    `atomsRemove`_("toolbox_2");




See Also
~~~~~~~~


+ `atomsLoad`_ Load one or several external modules
+ `atomsGetLoaded`_ Get the list of loaded external modules


.. _atomsLoad: atomsLoad.html
.. _atomsGetLoaded: atomsGetLoaded.html


