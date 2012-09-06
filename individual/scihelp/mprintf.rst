


mprintf
=======

converts, formats, and writes data to the main scilab window



printf
======



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mprintf(format,a1,...,an);




Arguments
~~~~~~~~~

:format a Scilab string describing the format to use to write the
  remaining operands. The format operand follows, as close as possible,
  the C printf format operand syntax.
: :a1,...,an Specifies the data to be converted and printed according
  to the format parameter.
:



Description
~~~~~~~~~~~

The `mprintf` function is a interface for C-coded version of `printf`
function.

The `mprintf` function writes formatted operands to the standard
Scilab output (i.e the Scilab window). The argument operands are
formatted under control of the format operand.



Examples
~~~~~~~~


::

    `mprintf`_('At iteration %i, Result is:\nalpha=%f',33,0.535)




See Also
~~~~~~~~


+ `disp`_ displays variables
+ `printf_conversion`_ mprintf, msprintf, mfprintf conversion
  specifications


.. _printf_conversion: printf_conversion.html
.. _disp: disp.html


