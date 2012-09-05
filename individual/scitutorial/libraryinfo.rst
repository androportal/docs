


libraryinfo
===========

get macros and path of a scilab library



Calling Sequence
~~~~~~~~~~~~~~~~


::

    macros = libraryinfo(libraryname)
    [macros,path] = libraryinfo(libraryname)




Arguments
~~~~~~~~~

:macros a string matrix (all main functions of the library)
:

:path a string (path of library)
:

:libraryname a string (library name)
:



Description
~~~~~~~~~~~

get functions names and path of a scilab library.The function names
returned correspond to those which correspond to the associated .sci
or .bin file names. The other ones are subsidiary functions.



Examples
~~~~~~~~


::

    [m,p]=libraryinfo('corelib')




See Also
~~~~~~~~


+ `librarieslist`_ get scilab libraries


.. _librarieslist: librarieslist.html


