


setenv
======

set the value of an environment variable



Calling Sequence
~~~~~~~~~~~~~~~~


::

    rep=setenv(name, value )




Arguments
~~~~~~~~~

:name Points to the name of an environment variable . (name is a
  string)
: :value Points to the value to be assigned to the environment
  variable. (value is a string)
: :rep Returns %T if it is ok else %F.
:



Description
~~~~~~~~~~~

set the value of an environnment variable.



Examples
~~~~~~~~


::

    setenv('toto','example')
    `getenv`_('toto')




See Also
~~~~~~~~


+ `getenv`_ get the value of an environment variable


.. _getenv: getenv.html


