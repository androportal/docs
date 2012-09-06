


getenv
======

get the value of an environment variable



Calling Sequence
~~~~~~~~~~~~~~~~


::

    env=getenv(str [, defaultReturn] )




Arguments
~~~~~~~~~

:str character string specifying environment variable name
: :defaultReturn an optional character string. When this optional
  value is used, the function `getenv` returns the value `defaultReturn`
  when the environment variable `str` is not found.
: :env character string which contain the environment variable value
:



Description
~~~~~~~~~~~

Return the value of an environment variable if it exists.



Examples
~~~~~~~~


::

    getenv('SCI')
    getenv('FOO','foo')




