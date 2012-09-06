``_


gettext
=======

get text translated into the current locale and domain.



_
=

Similar to `gettext`_



Calling Sequence
~~~~~~~~~~~~~~~~


::

    msg=gettext(myString)
    msg=_(myString)




Arguments
~~~~~~~~~

:myString a string, the message to be translated
:



Description
~~~~~~~~~~~

`gettext(myString)` gets the translation of a string `myString` to the
current locale in the current domain.

`_(myString)` is an alias of ``gettext`_(myString)`.



Examples
~~~~~~~~


::

    `gettext`_('Startup execution:')
    _('Startup execution:')




See Also
~~~~~~~~


+ `dgettext`_ get text translated into the current locale and a
  specific domain


.. _gettext: gettext.html
.. _dgettext: dgettext.html


