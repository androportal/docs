


setdefaultlanguage
==================

sets and saves the internal LANGUAGE value.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    setdefaultlanguage(language)




Arguments
~~~~~~~~~

:language a string, can have following values: 'fr', 'en', 'ru_RU',
  'zh_TW', ...
:



Description
~~~~~~~~~~~

`setdefaultlanguage(language)` changes current language and saves this
value in Scilab.

You have to restart Scilab, if you want to use menus.

`setdefaultlanguage('')` resets language to the system value.

`setdefaultlanguage` is used only Windows. On others operating systems
it returns always `%f`.



Examples
~~~~~~~~


::

    setdefaultlanguage('en_US')
    
    // restart Scilab
    `getlanguage`_()
    setdefaultlanguage('fr_FR')
    
    // restart Scilab
    `getlanguage`_()
    setdefaultlanguage('')
    
    // restart scilab




See Also
~~~~~~~~


+ `getlanguage`_ returns current language used by Scilab.
+ `setlanguage`_ sets the internal LANGUAGE value (for Windows only)


.. _getlanguage: getlanguage.html
.. _setlanguage: setlanguage.html


