


atomsShow
=========

Show the caracteristics of a module



Calling Sequence
~~~~~~~~~~~~~~~~


::

    atomsShow(module)




Arguments
~~~~~~~~~

:module 1x1 or 1x2 Matrix of strings: *1st Col.* *Technical name*
  Mandatory *2nd Col.* *Version* Optional If this field is empty or is
  not present, the most recent version is used
:



Description
~~~~~~~~~~~

Show the caracteristics of a module



Examples
~~~~~~~~


::

    `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org");
    atomsShow("toolbox_5");




See Also
~~~~~~~~


+ `atomsList`_ List available external modules
+ `atomsDepTreeShow`_ Show the dependency tree of a module


.. _atomsDepTreeShow: atomsDepTreeShow.html
.. _atomsList: atomsList.html


