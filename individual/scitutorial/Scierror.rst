


Scierror
========

C gateway function which displays an error message to the user (same
profil as the printf function) and returns an integer value specifying
an error level



Calling Sequence
~~~~~~~~~~~~~~~~


::

    void Scierror(error_level,format,value_1,..,value_n)




Arguments
~~~~~~~~~

:error_level an integer value specifying an error level
: :format a char* string. Specifies a character string combining
  literal characters with conversion specifications.
: :value_i Specifies the data to be converted according to the format
  parameter.
: :returns If the operation is successfull, this function returns the
  number of characters printed (not including the trailing '\0' used to
  end output to strings). If an error occurred, a negative value is
  returned.
:



Description
~~~~~~~~~~~

Scierror is a C gateway function which displays an error message to
the user (same profil as the printf function) and returns an integer
value specifying an error level. You must include Scierror.h to
benefit from this function. This header is provided in the
output_stream module (this directory should be included by default).



Examples
~~~~~~~~

In this example, the C gateway function prints an error message and
returns the error level 133.


::

    #include <stack-c.h>
    #include <Scierror.h>
    
    `int`_ sci_myscierror(char * fname)
    {
      Scierror(133,"An error has occurred: %d\n", 1);
    
      return 0;
    }




See Also
~~~~~~~~


+ `printf_conversion`_ mprintf, msprintf, mfprintf conversion
  specifications
+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `sciprint`_ A C gateway function which displays standard messages to
  the user (same profil as the C printf function)


.. _mprintf: mprintf.html
.. _printf_conversion: printf_conversion.html
.. _sciprint: sciprint.html


