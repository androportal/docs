


maxfiles
========

sets the limit for the number of files a Scilab is allowed to have
open simultaneously



Calling Sequence
~~~~~~~~~~~~~~~~


::

    r = maxfiles(newnumbermax)




Arguments
~~~~~~~~~

:newnumbermax an integer the new value.
: :r an integer: effective new value.
:



Description
~~~~~~~~~~~

`maxfiles` sets the limit for the number of files a Scilab is allowed
to have open simultaneously.

Minimum : 20

Maximum : 100

Default : 20



Examples
~~~~~~~~


::

    r = maxfiles(50);




See Also
~~~~~~~~


+ `mopen`_ open a file in Scilab


.. _mopen: mopen.html


