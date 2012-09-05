


funcprot
========

switch scilab functions protection mode



Calling Sequence
~~~~~~~~~~~~~~~~


::

    funcprot(prot)
    previousprot = funcprot(prot)
    prot = funcprot()




Arguments
~~~~~~~~~

:prot integer with possible values 0, 1, 2
: :previousprot integer with possible values 0, 1, 2 returns previous
  value
:



Description
~~~~~~~~~~~

Scilab functions are variable, `funcprot` allows the user to specify
what scilab do when such variables are redefined.


+ If `prot == 0` nothing special is done.
+ If `prot == 1` scilab issues a warning message when a function is
  redefined (default mode).
+ If `prot == 2` scilab issues an error when a function is redefined.




Examples
~~~~~~~~


::

    previousprot = funcprot(1)
    `deff`_('x = foo(a)','x = a;')
    `deff`_('x = foo(a)','x = a + 1;')
    foo = 33
    funcprot(0)
    `deff`_('x = foo(a)', 'x = a;')
    `deff`_('x = foo(a)', 'x = a + 1;')
    foo = 33
    funcprot(previousprot)




History
~~~~~~~
Version Description 5.4.0 Previous value is returned as output
argument when setting a new value.


