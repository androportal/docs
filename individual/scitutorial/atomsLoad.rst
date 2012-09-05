


atomsLoad
=========

Load one or several external modules



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result = atomsLoad(name)
    result = atomsLoad(name, version)




Arguments
~~~~~~~~~

:name Matrix of strings: External module name
: :version Matrix of strings: External module version. This is an
  optional parameter. If it's not defined, the most recent version of
  the module is used.
: :result 4xn character string matrix: *1st Col.* *Technical name*
  *2nd Col.* *Version* *3rd Col.* *Installation section* this parameter
  determines whether the module has been installed for all users or only
  for the current user. *4th Col.* *Installation path*
:



Description
~~~~~~~~~~~

`atomsLoad` load one or more external modules.



Examples
~~~~~~~~


::

    `atomsSetConfig`_("Verbose","True");
          `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org");
          `atomsInstall`_(["toolbox_2" "1.0"]);
          `atomsInstall`_(["toolbox_2" "2.0"]);
          
          atomsLoad(["toolbox_2" "1.0"]);
          t2_version()
          t2_function1()
          
          `atomsRemove`_("toolbox_2");




See Also
~~~~~~~~


+ `atomsIsLoaded`_ determines whether a module is loaded or not
+ `atomsGetLoaded`_ Get the list of loaded external modules
+ `atomsInstall`_ Get the list of loaded external modules


.. _atomsIsLoaded: atomsIsLoaded.html
.. _atomsInstall: atomsGetLoaded.html


