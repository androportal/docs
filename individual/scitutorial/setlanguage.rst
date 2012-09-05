


setlanguage
===========

sets the internal LANGUAGE value (for Windows only)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    setlanguage(language)




Arguments
~~~~~~~~~

:language with language='fr' or 'en', ...
:



Description
~~~~~~~~~~~

`setlanguage(language)` changes current language in scilab.



Examples
~~~~~~~~


::

    setlanguage('en_US')
    `getlanguage`_()
    setlanguage('en')
    `getlanguage`_()
    setlanguage('fr')
    `getlanguage`_()
    setlanguage('fr_FR')
    `getlanguage`_()




See Also
~~~~~~~~


+ `getlanguage`_ returns current language used by Scilab.
+ `setdefaultlanguage`_ sets and saves the internal LANGUAGE value.


.. _setdefaultlanguage: setdefaultlanguage.html
.. _getlanguage: getlanguage.html


