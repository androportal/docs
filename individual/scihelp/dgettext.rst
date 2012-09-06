


dgettext
========

get text translated into the current locale and a specific domain



Calling Sequence
~~~~~~~~~~~~~~~~


::

    msg=dgettext(domain, myString)




Arguments
~~~~~~~~~

:domain a string, the name of the message domain
: :myString a string, the message to be translated
:



Description
~~~~~~~~~~~

`dgettext` gets the translation of a string `myString` to the current
locale in a specified message domain `domain`.



Examples
~~~~~~~~


::

    dgettext('scilab','Startup execution:')




See Also
~~~~~~~~


+ `gettext`_ get text translated into the current locale and domain.
+ `_`_


.. __: gettext.html#_
.. _gettext: gettext.html


