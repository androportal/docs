


atomsRepositoryList
===================

Get the list of managed repositories



Calling Sequence
~~~~~~~~~~~~~~~~


::

    repositories = atomsRepositoryList([section])




Arguments
~~~~~~~~~

:section This argument controls the list of section where search
URL(s). `section` is a single-string and its value should be :

    + `"all"`: URL(s) present in the "user", "allusers" and "official"
      section are listed.
    + `"allusers"`: only URL(s) present in the "allusers" section are
      listed.
    + `"user"`: only URL(s) present in the "user" section are listed.
    + `"official"`: only URL(s) present in the "official" section are
      listed.
The default value is "all".
: :repositories Matrix of strings : the first column give the list of
  repositories managed by ATOMS and the second column indicate if the
  repository is an official repository, if the repository has been added
  for all users or only for the current user.
:



Description
~~~~~~~~~~~

`atomsRepositoryList` return a matrix that give the list of available
repositories.



Examples
~~~~~~~~


::

    `atomsRepositoryAdd`_('http://scene1.test.atoms.scilab.org');
    atomsRepositoryList()
    atomsRepositoryList('all')
    atomsRepositoryList('official')
    atomsRepositoryList('allusers')
    atomsRepositoryList('user')
    `atomsRepositoryDel`_('http://scene1.test.atoms.scilab.org');




See Also
~~~~~~~~


+ `atomsRepositoryAdd`_ Add one or several URLs to the list of managed
  repositories
+ `atomsRepositoryDel`_ Remove one or several URLs from the list of
  managed repositories


.. _atomsRepositoryDel: atomsRepositoryDel.html
.. _atomsRepositoryAdd: atomsRepositoryAdd.html


