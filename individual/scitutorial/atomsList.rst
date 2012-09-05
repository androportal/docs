


atomsList
=========

List available external modules



Calling Sequence
~~~~~~~~~~~~~~~~


::

    atomsList([category])




Arguments
~~~~~~~~~

:category This argument limits the list of modules to a category.
  `category` is a single-string and its value should be a valid category
  (See `atomsCategoryList`_).
:



Description
~~~~~~~~~~~

List available external modules



Examples
~~~~~~~~


::

    atomsList();
    atomsList("Data Analysis And Statistics");




See Also
~~~~~~~~


+ `atomsShow`_ Show the caracteristics of a module
+ `atomsDepTreeShow`_ Show the dependency tree of a module
+ `atomsCategoryList`_ List available categories


.. _atomsCategoryList: atomsCategoryList.html
.. _atomsDepTreeShow: atomsDepTreeShow.html
.. _atomsShow: atomsShow.html


