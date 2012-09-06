


atomsCategoryList
=================

List available categories



Calling Sequence
~~~~~~~~~~~~~~~~


::

    atomsCategoryList([filter])




Arguments
~~~~~~~~~

:filter This argument controls if all categories or only main
categories have to be displayed. `filter` is a single-string and its
value should be:

    + `"all"`: All categories (main categories and sub-categories) are
      displayed.
    + `"main"`: Only main categories are displayed.

:



Description
~~~~~~~~~~~

List available categories



Examples
~~~~~~~~


::

    atomsCategoryList();
    atomsCategoryList("all");
    atomsCategoryList("main");




See Also
~~~~~~~~


+ `atomsList`_ List available external modules


.. _atomsList: atomsList.html


