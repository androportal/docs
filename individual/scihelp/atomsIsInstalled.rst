


atomsIsInstalled
================

Determines whether the module is installed. Returns true if the module
is installed, false otherwise.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = atomsIsInstalled(modules[,section])




Arguments
~~~~~~~~~

:modules mx1, mx2 Matrix of strings: *1st Col.* *Technical name*
  Mandatory *2nd Col.* *Version* Optional If this field is empty or is
  not present, module's version is ignored. *3rd Col.* *Section*
  Optional If this field is empty or is not present, module's section is
  ignored.
: :section This argument controls the list of searched modules.
`section` is a single-string and its value should be :

    + `"all"`: atomsIsInstalled() searches external modules installed in
      both "user" and "allusers" sections.
    + `"allusers"`: atomsIsInstalled() searches external modules installed
      in the "allusers" section.
    + `"user"`: atomsIsInstalled() searches external modules installed in
      the "user" section.
The default value is "all".
: :res
:



Description
~~~~~~~~~~~





Examples
~~~~~~~~


::

    `atomsSetConfig`_("Verbose","True");
    `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org");
    
    // Install the needed module for the purpose of the example
    `atomsInstall`_("toolbox_5","user");
    
    // simplest way
    atomsIsInstalled("toolbox_5");
    
    // Check several modules ...
    atomsIsInstalled(["toolbox_5" "toolbox_4"])
    
    // ... with a specific version
    atomsIsInstalled(["toolbox_5" "1.0" ; "toolbox_4" "1.0" ; "toolbox_5" "1.1"])
    
    // ... installed in a specific section
    atomsIsInstalled(["toolbox_5" "1.0" ; "toolbox_4" "1.0" ; "toolbox_5" "1.1"],"user")
    atomsIsInstalled(["toolbox_5" "1.0" ; "toolbox_4" "1.0" ; "toolbox_5" "1.1"],"allusers")
    
    // Some cleaning ...
    `atomsRepositoryDel`_("http://scene2.test.atoms.scilab.org");
    `atomsRemove`_("toolbox_2");




See Also
~~~~~~~~


+ `atomsInstall`_ Install one or several external modules
+ `atomsGetInstalled`_ Get the list of installed external modules


.. _atomsGetInstalled: atomsGetInstalled.html
.. _atomsInstall: atomsInstall.html


