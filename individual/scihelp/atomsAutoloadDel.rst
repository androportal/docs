


atomsAutoloadDel
================

Remove one or several modules from the autoload system



Calling Sequence
~~~~~~~~~~~~~~~~


::

    nbDel = atomsAutoloadDel(modules[,section])




Arguments
~~~~~~~~~

:modules mx1, mx2 or mx3 character string matrix: *1st Col.*
  *Technical name* Mandatory *2nd Col.* *Version* Optional If this field
  is empty or is not present, all versions of the module are removed
  from the autoload system *3rd Col.* *Installed section* Optional If
  this field is empty or is not present, modules installed in both
  "user" and "allusers" sections are searched.
: :section This argument controls the list of sections where search
modules(s) to remove from autoload system. `section` is a single-
string and its value should be :

    + `"all"`: module(s) to remove from autotoload list are searched in
      both "user" and "allusers" sections.
    + `"allusers"`: module(s) to remove from autotoload system are only
      searched in the "allusers" autoload list.
    + `"user"`: module(s) to remove from autotoload system are only
      searched in the "user" autoload list.
If SCI is write accessible, "all" is the default value. Otherwise, the
  default value is "user".
: :nbDel An integer : the number of modules successfully removed from
  the autoload system.
:



Description
~~~~~~~~~~~

`atomsAutoloadDel` remove one or several modules from the autoload
system.



Examples
~~~~~~~~


::

    `atomsRepositoryAdd`_('http://scene1.test.atoms.scilab.org');
    
    `atomsInstall`_("toolbox_5","user");
    `atomsAutoloadList`_()
    
    atomsAutoloadDel("toolbox_5");
    `atomsAutoloadList`_()
    
    `atomsAutoloadAdd`_(["toolbox_5" "1.0" "user"],"user");
    `atomsAutoloadList`_()
    atomsAutoloadDel(["toolbox_5" "1.0"]);
    `atomsAutoloadList`_()
    
    `atomsAutoloadAdd`_(["toolbox_5" "1.0" "user"],"user");
    `atomsAutoloadList`_()
    atomsAutoloadDel(["toolbox_5" "1.0" "user"]);
    `atomsAutoloadList`_()
    
    `atomsAutoloadAdd`_(["toolbox_5" "1.0" "user"],"user");
    `atomsAutoloadList`_()
    atomsAutoloadDel(["toolbox_5" "1.0" "user"],"user");
    `atomsAutoloadList`_()
    
    `atomsRemove`_("toolbox_5","user");
    `atomsRepositoryDel`_('http://scene1.test.atoms.scilab.org');




See Also
~~~~~~~~


+ `atomsAutoloadAdd`_ Add one or several modules to autoload
+ `atomsAutoloadList`_ Get the list of modules registered to autoload


.. _atomsAutoloadAdd: atomsAutoloadAdd.html
.. _atomsAutoloadList: atomsAutoloadList.html


