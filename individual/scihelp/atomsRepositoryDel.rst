


atomsRepositoryDel
==================

Remove one or several URLs from the list of managed repositories



Calling Sequence
~~~~~~~~~~~~~~~~


::

    nbDel = atomsRepositoryDel(url[,section])




Arguments
~~~~~~~~~

:url character string matrix: list of the URLs to remove
: :section This argument controls the list of sections where search
URL(s) to remove. `section` is a single-string and its value should be
:

    + `"all"`: URL(s) to remove are searched in both "user" and "allusers"
      sections.
    + `"allusers"`: URL(s) to remove are only searched in the "allusers"
      section.
    + `"user"`: URL(s) to remove are only searched in the "user" section.
If SCI is write accessible, "all" is the default value. Otherwise, the
  default value is "user".
: :nbDel An integer : the number of repositories successfully removed.
:



Description
~~~~~~~~~~~





Examples
~~~~~~~~


::

    `atomsRepositoryList`_()
    `atomsRepositoryAdd`_("http://scene1.test.atoms.scilab.org")
    `atomsRepositoryList`_()
    atomsRepositoryDel("http://scene1.test.atoms.scilab.org")
    `atomsRepositoryList`_()




See Also
~~~~~~~~


+ `atomsRepositoryAdd`_ Add one or several URLs to the list of managed
  repositories
+ `atomsRepositoryList`_ Get the list of managed repositories


.. _atomsRepositoryList: atomsRepositoryList.html
.. _atomsRepositoryAdd: atomsRepositoryAdd.html


