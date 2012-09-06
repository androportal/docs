****


code2str
========

returns character string associated with Scilab integer codes. **This
function is obsolete.**



Calling Sequence
~~~~~~~~~~~~~~~~


::

    str=code2str(c)




Arguments
~~~~~~~~~

:str A character string
: :c vector of character integer codes
:



Description
~~~~~~~~~~~

Returns character string associated with Scilab integer codes.str is
such that c(i) is the Scilab integer code of part(str,i))



Examples
~~~~~~~~


::

    code2str([-28 12 18 21 10 11])
    `str2code`_('Scilab')'




See Also
~~~~~~~~


+ `str2code`_ return scilab integer codes associated with a character
  string. This function is obsolete.
+ `ascii`_ string ascii conversions




History
~~~~~~~
Version Description 5.4.0 This function will be removed in Scilab
5.4.1
.. _ascii: ascii.html
.. _str2code: str2code.html


