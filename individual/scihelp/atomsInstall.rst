


atomsInstall
============

Install one or several external modules



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result = atomsInstall(modules[,section])
    result = atomsInstall(file)




Arguments
~~~~~~~~~

:modules mx1, mx2 Matrix of strings: *1st Col.* *Technical name*
  Mandatory *2nd Col.* *Version* Optional If this field is empty or is
  not present, the most recent version is used
: :file mx1 Matrix of strings: *1st Col.* *File-system path* Mandatory
: :section This argument controls where the external module is
installed. `section` is a single-string and its value should be :

    + `"allusers"`: the external module is installed for all users of the
      computer and is located in SCI/contrib ("allusers zone").
    + `"user"`: the external module is only installed for the current user
      and is located in SCIHOME/atoms ("user zone").
If SCI/contrib is write accessible, "allusers" is the default value.
  Otherwise, the default value is "user".
: :result 5xn character string matrix: *1st Col.* *Technical name*
  *2nd Col.* *Version* *3rd Col.* *Installation section* this parameter
  determines whether the module has been installed for all users or only
  for the current user. *4th Col.* *Installation path* *5th Col.*
  *Status* "I" stands for "Intentionnaly", "A" stands for
  "Automatically"
:



Description
~~~~~~~~~~~

`atomsInstall` install one or more external modules.



Examples
~~~~~~~~

*Example 1*: Installing a module from a repository


::

    // Display some additionnal information
    `atomsSetConfig`_("Verbose","True");
    
    // Load the test repository
    `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org");
    
    // Install a module
    atomsInstall("toolbox_1");
    
    // Install a specific version
    atomsInstall(["toolbox_2" "2.0"]);
    
    // Install several modules
    atomsInstall(["toolbox_4" "1.0" ; "toolbox_2" "1.0"]);
    
    // Install a module in the user section
    atomsInstall(["toolbox_5"],"user");
    
    // Install a module in the allusers section
    // (write access on SCI directory is needed):
    atomsInstall(["toolbox_6" "1.0";"toolbox_3" "1.0"], ..
                 "allusers");
    
    // Get the list of installed modules:
    `disp`_( `atomsGetInstalled`_() );
    
    // Cleaning :)
    `atomsRemove`_(["toolbox_1"; ..
                 "toolbox_2"; ..
                 "toolbox_3"; ..
                 "toolbox_4"; ..
                 "toolbox_5"; ..
                 "toolbox_6"]);


*Example 2*: Installing a local module. As well as installing modules
from the central repository, you can also install modules directly
from your own machine.


::

    // Display some additionnal information
    `atomsSetConfig`_("Verbose","True");
    
    // Install a module
    atomsInstall(SCI+"/modules/atoms/tests/unit_tests/toolbox_7_1.0-1.bin.zip");
    
    // Get the list of installed modules:
    `disp`_( `atomsGetInstalled`_() );
    
    // Cleaning :)
    `atomsRemove`_("toolbox_7");




See Also
~~~~~~~~


+ `atomsIsInstalled`_ Determines whether the module is installed.
  Returns true if the module is installed, false otherwise.
+ `atomsGetInstalled`_ Get the list of installed external modules
+ `atomsRemove`_ Remove one or several modules


.. _atomsIsInstalled: atomsIsInstalled.html
.. _atomsGetInstalled: atomsGetInstalled.html
.. _atomsRemove: atomsRemove.html


