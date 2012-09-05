


sciprint
========

A C gateway function which displays standard messages to the user
(same profil as the C printf function)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    void sciprint(format,value_1,..,value_n)




Arguments
~~~~~~~~~

:format a char* string. Specifies a character string combining literal
  characters with conversion specifications.
: :value_i Specifies the data to be converted according to the format
  parameter (%s, %d, ...).
:



Description
~~~~~~~~~~~

This C gateway function provides the capabilities to display messages
to the Scilab user. Basically; it emulates the C language printf
function. You must include sciprint.h to benefit from this function.
This header is provided in the output_stream module (this directory
should be included by default).

Note that if you want to trigger an error, the function Scierror is
more appropriate.



Examples
~~~~~~~~

In this example, the C gateway function prints several messages
illustrating the use of the sciprint function in the Scilab console.


::

    #include <stack-c.h>
    #include <sciprint.h>
    
    `int`_ sci_mysciprint(char * fname)
    {
      sciprint("printing an integer: %d\n", 1);
      sciprint("printing a double:   %f\n", 2.1);
      sciprint("printing a string:   %s\n", "test");
    
      return 0;
    }




See Also
~~~~~~~~


+ `printf_conversion`_ mprintf, msprintf, mfprintf conversion
  specifications
+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `Scierror`_ C gateway function which displays an error message to
  the user (same profil as the printf function) and returns an integer
  value specifying an error level


.. _mprintf: mprintf.html
.. _printf_conversion: printf_conversion.html
.. _Scierror: Scierror.html


