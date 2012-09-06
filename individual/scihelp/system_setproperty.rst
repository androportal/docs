


system_setproperty
==================

set a system property indicated by a specified key and value.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    prev = system_setproperty(key,value)




Arguments
~~~~~~~~~

:prev a string previous value or []
: :key a string
: :value a string
:



Description
~~~~~~~~~~~

Sets the system property indicated by the specified key.

Warning : change property with precaution.



Examples
~~~~~~~~


::

    `system_getproperty`_('myproperty')
    system_setproperty('myproperty','hello')
    `system_getproperty`_('myproperty')




