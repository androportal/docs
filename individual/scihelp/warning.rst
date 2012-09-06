


warning
=======

warning messages



Calling Sequence
~~~~~~~~~~~~~~~~


::

    warning('string')
    warning('off')
    warning('on')
    mode = warning('query')




Description
~~~~~~~~~~~

`warning('string')` prints the character string `'string'` in a
warning message.

`'on'` enables warning messages.

`'off'` disables warning messages.

`'query'` gets state `'on'` or `'off'`.



Examples
~~~~~~~~


::

    warning('on') 
    warning('this is a warning')
    warning('off')
    warning('this is a warning')
    warning('query')
    warning('on')
    // Example with a localized message
    warning(`msprintf`_(`gettext`_("%s: Wrong number of input argument: %d expected.\n"),"myFunction",2));




See Also
~~~~~~~~


+ `error`_ error message
+ `gettext`_ get text translated into the current locale and domain.
+ `msprintf`_ converts, formats, and writes data in a string


.. _error: error.html
.. _msprintf: msprintf.html
.. _gettext: gettext.html


