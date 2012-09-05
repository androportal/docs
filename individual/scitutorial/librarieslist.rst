


librarieslist
=============

get scilab libraries



Calling Sequence
~~~~~~~~~~~~~~~~


::

    s=librarieslist()




Arguments
~~~~~~~~~

:s a string matrix
:



Description
~~~~~~~~~~~

return in `s` all libraries on scilab stack.

libraries are scanned from the lastest loaded to the first one.



Examples
~~~~~~~~


::

    librarieslist()
    // to sort list
    l =  `gsort`_(librarieslist(),'r','i')




See Also
~~~~~~~~


+ `libraryinfo`_ get macros and path of a scilab library
+ `gsort`_ sorting by quick sort agorithm


.. _libraryinfo: libraryinfo.html
.. _gsort: gsort.html


