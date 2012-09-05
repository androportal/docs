


atomsRemove
===========

Remove one or several modules



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result = atomsRemove(modules[,section][,delete])




Arguments
~~~~~~~~~

:modules mx1 or mx2 character string matrix: *1st Col.* *Technical
  name* Mandatory *2nd Col.* *Version* Optional If this field is empty
  or is not present, all versions of the module are removed.
: :section This argument controls the list of sections where search
modules to remove. `section` is a single-string and its value should
be :

    + `"all"`: Modules to remove are searched in both "user" and
      "allusers" sections.
    + `"allusers"`: Modules to remove are only searched in the "allusers"
      section.
    + `"user"`: Modules to remove are only searched in the "user" section.
If SCI is write accessible, "all" is the default value. Otherwise, the
  default value is "user".
: :delete `delete` is a boolean. If set to %T (True), the .zip or
  .tar.gz file containing the sources will also be deleted. This
  includes the dependencies' archives files that were installed with the
  module, if any.
: :result 5xn character string matrix: *1st Col.* *Technical name*
  *2nd Col.* *Version* *3rd Col.* *Installation section* this parameter
  determines whether the module has been installed for all users or only
  for the current user. *4th Col.* *Installation path* *5th Col.*
  *Status* "I" stands for "Intentionnaly", "A" stands for
  "Automatically"
:



Description
~~~~~~~~~~~

`atomsRemove` remove one or more modules.



Examples
~~~~~~~~


::

    // Display some additionnal information
    `atomsSetConfig`_("Verbose","True");
    
    // Load the test repository
    `atomsRepositoryAdd`_("http://scene2.test.atoms.scilab.org");
    
    // install toolbox_4 : both 1.0 and 1.1 versions
    
    // Remove all versions of a module
    `atomsInstall`_(["toolbox_4" "1.0";"toolbox_4" "1.1"],"user");
    atomsRemove(["toolbox_4"]);
    
    // Remove a specific version
    `atomsInstall`_(["toolbox_4" "1.0";"toolbox_4" "1.1"],"user");
    atomsRemove(["toolbox_4" "1.0"]);
    atomsRemove(["toolbox_4" "1.1"]);
    
    // Remove several modules
    `atomsInstall`_(["toolbox_4";"toolbox_3"],"user");
    atomsRemove(["toolbox_4";"toolbox_3"]);
    
    // Remove a module from a specific section
    // ! This example needs write access on SCI directory
    
    `atomsInstall`_("toolbox_4","user");
    `atomsInstall`_("toolbox_4","allusers");
    
    `disp`_(`atomsGetInstalled`_());
    atomsRemove("toolbox_4","user");
    `disp`_(`atomsGetInstalled`_());
    atomsRemove("toolbox_4","allusers");
    `disp`_(`atomsGetInstalled`_());
    
    // Remove a module, including its archive file
    
    `atomsInstall`_("toolbox_4");
    atomsRemove("toolbox_4",%T);
    
    // Remove a module from a specific section, including its archive file
    
    `atomsInstall`_("toolbox_4");
    atomsRemove("toolbox_4","user",%T);
    
    // Unload the test repository
    `atomsRepositoryDel`_("http://scene2.test.atoms.scilab.org");




See Also
~~~~~~~~


+ `atomsInstall`_ Install one or several external modules
+ `atomsIsInstalled`_ Determines whether the module is installed.
  Returns true if the module is installed, false otherwise.
+ `atomsGetInstalled`_ Get the list of installed external modules


.. _atomsIsInstalled: atomsIsInstalled.html
.. _atomsGetInstalled: atomsGetInstalled.html
.. _atomsInstall: atomsInstall.html


