


atomsAutoloadList
=================

Get the list of modules registered to autoload



Calling Sequence
~~~~~~~~~~~~~~~~


::

    modules = atomsAutoloadList([section])




Arguments
~~~~~~~~~

:section This argument controls the list of section where search
URL(s). `section` is a single-string and its value should be :

    + `"all"`: module(s) present on both "user" and "allusers" autoload
      lists are returned.
    + `"allusers"`: only module(s) present on the "allusers" autoload
      lists are returned.
    + `"user"`: only module(s) present on the "user" autoload lists are
      returned.
The default value is "all".
: :modules 4xn character string matrix: *1st Col.* *Module's technical
  name* *2nd Col.* *Module's version* *3rd Col.* *Module's installed
  section* *4th Col.* *Autoload list section*
:



Description
~~~~~~~~~~~

`atomsAutoloadList` returns the list of modules registered to autoload



Examples
~~~~~~~~


::

    `atomsRepositoryAdd`_('http://scene1.test.atoms.scilab.org');
    `atomsInstall`_("toolbox_1");
    
    atomsAutoloadList('user')
    atomsAutoloadList('allusers')
    atomsAutoloadList('all')
    
    `atomsRemove`_("toolbox_1");
    `atomsRepositoryDel`_('http://scene1.test.atoms.scilab.org');




See Also
~~~~~~~~


+ `atomsAutoloadAdd`_ Add one or several modules to autoload
+ `atomsAutoloadDel`_ Remove one or several modules from the autoload
  system


.. _atomsAutoloadAdd: atomsAutoloadAdd.html
.. _atomsAutoloadDel: atomsAutoloadDel.html


