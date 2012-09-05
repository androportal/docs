


manedit
=======

editing a manual item



Calling Sequence
~~~~~~~~~~~~~~~~


::

    manedit(manitem)




Arguments
~~~~~~~~~

:manitem character string (usually, name of a function)
:



Description
~~~~~~~~~~~

`edit(manitem)` opens the xml file associated to `manitem` in the
scilab editor.

If there is no xml file associated with `manitem` and `manitem` is the
name of a Scilab function, editor opens with the skeleton of the xml
file produced by `help_skeleton`_. This file is located in TMPDIR.



Examples
~~~~~~~~


::

    manedit('manedit')
    
    function [x, y, z]=foo123(a, b),
    x=a+b,y=a-b,z=a==b
    endfunction
    manedit foo123




See Also
~~~~~~~~


+ `help`_ on-line help command
+ `help_skeleton`_ build the skeleton of the xml help file associated
  to a Scilab function


.. _help_skeleton: help_skeleton.html
.. _help: help.html


