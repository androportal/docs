


atomsRepositoryAdd
==================

Add one or several URLs to the list of managed repositories



Calling Sequence
~~~~~~~~~~~~~~~~


::

    nbAdd = atomsRepositoryAdd(url[,section])




Arguments
~~~~~~~~~

:url Matrix of strings : list of the URLs to add
: :section This argument controls where the repository is added.
`section` is a single-string and its value should be :

    + `"allusers"`: the repository is added to the "allusers" list and all
      user of scilab are affected.
    + `"user"`: the repository is added to the "user" list and only the
      current user is affected.
If SCI/contrib is write accessible, "allusers" is the default value.
  Otherwise, the default value is "user".
: :nbAdd An integer : the number of repositories successfully added.
:



Description
~~~~~~~~~~~





Examples
~~~~~~~~


::

    `atomsRepositoryList`_()
    atomsRepositoryAdd(["http://scene1.test.atoms.scilab.org"])
    `atomsRepositoryList`_()




See Also
~~~~~~~~


+ `atomsRepositoryDel`_ Remove one or several URLs from the list of
  managed repositories
+ `atomsRepositoryList`_ Get the list of managed repositories


.. _atomsRepositoryDel: atomsRepositoryDel.html
.. _atomsRepositoryList: atomsRepositoryList.html


