


atomsAutoloadAdd
================

Add one or several modules to autoload



Calling Sequence
~~~~~~~~~~~~~~~~


::

    nbAdd = atomsAutoloadAdd(modules[,section])




Arguments
~~~~~~~~~

:modules mx1, mx2 or mx3 Matrix of strings: *1st Col.* *Technical
  name* Mandatory *2nd Col.* *Version* Optional If this field is empty
  or is not present, the most recent version is used *3rd Col.*
  *Installed section* Optional If this field is empty or is not present,
  and `module` is installed in both "user" and "allusers" sections, the
  section of autoload list is used.
: :section This argument controls which autoload list is changed.
`section` is a single-string and its value should be :

    + `"allusers"`: modules are added to the "allusers" autoload list and
      all users of scilab are affected.
    + `"user"`: modules are added to the "user" autoload list and only the
      current user is affected.
If SCI/contrib is write accessible, "allusers" is the default value.
  Otherwise, the default value is "user".
: :nbAdd An integer : the number of modules successfully added.
:



Description
~~~~~~~~~~~





Examples
~~~~~~~~


::

    `atomsRepositoryAdd`_('http://scene1.test.atoms.scilab.org');
    `atomsSetConfig`_("autoloadAddAfterInstall","False");
    
    `atomsInstall`_("toolbox_5","user");
    `atomsAutoloadList`_()
    
    atomsAutoloadAdd("toolbox_5","user");
    `atomsAutoloadList`_()
    
    `atomsAutoloadDel`_(["toolbox_5"]);
    atomsAutoloadAdd(["toolbox_5" "1.0"],"user");
    `atomsAutoloadList`_()
    
    `atomsAutoloadDel`_("toolbox_5");
    atomsAutoloadAdd(["toolbox_5" "1.0" "user"],"user");
    `atomsAutoloadList`_()
    
    `atomsRemove`_("toolbox_5","user");
    `atomsSetConfig`_("autoloadAddAfterInstall","True");
    `atomsRepositoryDel`_('http://scene1.test.atoms.scilab.org');
    
    `atomsAutoloadList`_()




See Also
~~~~~~~~


+ `atomsAutoloadDel`_ Remove one or several modules from the autoload
  system
+ `atomsAutoloadList`_ Get the list of modules registered to autoload


.. _atomsAutoloadDel: atomsAutoloadDel.html
.. _atomsAutoloadList: atomsAutoloadList.html


