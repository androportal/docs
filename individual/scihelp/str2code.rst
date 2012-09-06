****


str2code
========

return scilab integer codes associated with a character string. **This
function is obsolete.**



Calling Sequence
~~~~~~~~~~~~~~~~


::

    c=str2code(str)




Arguments
~~~~~~~~~

:str A character string.
: :c A vector of character integer codes
:



Description
~~~~~~~~~~~

Return c such that c(i) is the scilab integer code of part(str,i))



Examples
~~~~~~~~


::

    str2code('Scilab')'
    `code2str`_([-28 12 18 21 10 11])




See Also
~~~~~~~~


+ `code2str`_ returns character string associated with Scilab integer
  codes. This function is obsolete.
+ `ascii`_ string ascii conversions




History
~~~~~~~
Version Description 5.4.0 This function will be removed in Scilab
5.4.1
.. _code2str: code2str.html
.. _ascii: ascii.html


