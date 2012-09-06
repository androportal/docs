


atomsUpdate
===========

Update one or several external modules



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result = atomsUpdate()
    result = atomsUpdate(name[,section]])




Arguments
~~~~~~~~~

:name 1xn character string matrix : module's technical name
: :section This argument controls the list of sections where search
modules to update. `section` is a single-string and its value should
be :

    + `"all"`: Modules to remove are searched in both "user" and
      "allusers" sections.
    + `"allusers"`: Modules to remove are only searched in the "allusers"
      section.
    + `"user"`: Modules to remove are only searched in the "user" section.
If SCI is write accessible, "all" is the default value. Otherwise, the
  default value is "user".
: :result
:



Description
~~~~~~~~~~~

`atomsUpdate` update one or more external modules.



Examples
~~~~~~~~


::

    `atomsSetConfig`_("Verbose","True");
    `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org");
    
    // Install toolbox_5
    `atomsInstall`_("toolbox_5");
    
    `disp`_(`atomsGetInstalled`_());
    
    // Load the 2nd scenario in which toolbox_4 has been updated:
    // toolbox_4 version 1.1 has been added
    // (toolbox_4 is a dependency of toolbox_5)
    
    `atomsRepositoryDel`_("http://scene1.test.atoms.scilab.org");
    `atomsRepositoryAdd`_("http://scene2.test.atoms.scilab.org");
    
    // Update toolbox_5
    atomsUpdate("toolbox_5");
    `disp`_(`atomsGetInstalled`_());
    
    // Some cleaning
    `atomsRepositoryDel`_("http://scene2.test.atoms.scilab.org");
    `atomsRemove`_("toolbox_5");




See Also
~~~~~~~~


+ `atomsInstall`_ Install one or several external modules
+ `atomsRemove`_ Remove one or several modules
+ `atomsGetInstalled`_ Get the list of installed external modules


.. _atomsGetInstalled: atomsGetInstalled.html
.. _atomsInstall: atomsInstall.html
.. _atomsRemove: atomsRemove.html


