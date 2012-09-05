


add_help_chapter
================

Add an entry in the help list



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ok = add_help_chapter(title,path[,mode])




Arguments
~~~~~~~~~

:title String array, Help chapter title
: :path String array, Help chapters path
: :mode A boolean, if TRUE, the chapter is considered as belongs to a
  internal modules, otherwise, the chapter is added as external module.
  It is an optional input argument and its default value is %F.
: :ok A vector of booleans. The same size as the `path` variable. If
  the chapter page number i was not existing in the help system then
  ok(i) is set to %t.
:



Description
~~~~~~~~~~~

This function adds a new entry in the help list. If the path is
already present in the help list, `add_help_chapter` skips the add.
The function checks if the directory exist.



See Also
~~~~~~~~


+ `help`_ on-line help command
+ `del_help_chapter`_ Delete an entry in the help list


.. _help: help.html
.. _del_help_chapter: del_help_chapter.html


