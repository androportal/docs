


add_demo
========

Add an entry in the demos list



Calling Sequence
~~~~~~~~~~~~~~~~


::

    add_demo(title,path)




Arguments
~~~~~~~~~

:title a character string, the demo title
: :path a character string, the path of the scilab script associated
  with the demo
:



Description
~~~~~~~~~~~

This function adds a new entry in the demos list. The demo should be
executed by a Scilab script file. If the given `title` already exists
in the demo list associated with the same file nothing is done. The
function checks if the file exist.



Examples
~~~~~~~~


::

    //create a simple demo script
    path=TMPDIR+'/foo.sce';
    `mputl`_('disp Hello',path)
    add_demo('My first demo',path)
    //the demo can now be run using the "Demos" menu.




See Also
~~~~~~~~


+ `add_help_chapter`_ Add an entry in the help list


.. _add_help_chapter: add_help_chapter.html


