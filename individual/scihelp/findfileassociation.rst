


findfileassociation
===================

Searches for and retrieves a file association-related string from the
registry (Windows only)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    findfileassociation('A file name extension, such as .txt')




Description
~~~~~~~~~~~

`findfileassociation('A file name extension, such as .txt')` Searches
for and retrieves a file association-related string from the registry.



Examples
~~~~~~~~


::

    findfileassociation('.txt')
    findfileassociation('.sce')
    findfileassociation('.xsl')
    findfileassociation('.toto')




See Also
~~~~~~~~


+ `winopen`_ Open file in appropriate application (Windows only)


.. _winopen: winopen.html


