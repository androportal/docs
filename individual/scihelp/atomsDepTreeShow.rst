


atomsDepTreeShow
================

Show the dependency tree of a module



Calling Sequence
~~~~~~~~~~~~~~~~


::

    atomsDepTreeShow(module)




Arguments
~~~~~~~~~

:module 1x1 or 1x2 Matrix of strings: *1st Col.* *Technical name*
  Mandatory *2nd Col.* *Version* Optional If this field is empty or is
  not present, the most recent version is used
:



Description
~~~~~~~~~~~

`atomsDepTreeShow` shows the dependency tree of an external module.



Examples
~~~~~~~~


::

    `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org");
    atomsDepTreeShow("toolbox_6")




See Also
~~~~~~~~


+ `atomsShow`_ Show the caracteristics of a module
+ `atomsList`_ List available external modules


.. _atomsShow: atomsShow.html
.. _atomsList: atomsList.html


