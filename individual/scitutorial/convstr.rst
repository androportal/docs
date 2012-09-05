


convstr
=======

case conversion



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [y]=convstr(str, [flag])




Arguments
~~~~~~~~~

:str, y A matrix of character strings
: :flag A character option with possible values
    :'u' for upper
    : :'l' for lower
    :

:



Description
~~~~~~~~~~~

converts the matrix of strings `str-matrix` into lower case (for `"l"`
;default value) or upper case (for `"u"`).



Examples
~~~~~~~~


::

    A=['this','is';'my','matrix'];
    convstr(A,'u')




