**


fprintf
=======

Emulator of C language fprintf function. *This function is obsolete*



Calling Sequence
~~~~~~~~~~~~~~~~


::

    fprintf(file,format,value_1,..,value_n)




Arguments
~~~~~~~~~

:format a Scilab string. It specifies a character string combining
  literal characters with conversion specifications.
: :value_i specifies the data to be converted according to the
  `format` parameter.
: :file a Scilab string specifying a file name or a logical unit
  number (see`file`_) Note that if `file`=0, the message will be display
  on standard error stream (stderr).
:



Description
~~~~~~~~~~~

This function is obsolete, use preferabily the `mfprintf`_ function
which is much more compatible with the C `fprintf` functionalities.

The `fprintf` function converts, formats, and writes its `value`
parameters, under control of the `format` parameter, to the file
specified by its `file` parameter.

The `format` parameter is a character string that contains two types
of objects:

:Literal characters which are copied to the output stream.
: :Conversion specifications each of which causes zero or more items
  to be fetched from the `value` parameter list. See
  `printf_conversion`_ for details.
:

If any `value`s remain after the entire `format` has been processed,
they are ignored.



Examples
~~~~~~~~


::

    u=`file`_('open',`fullfile`_(TMPDIR,'results'),'unknown') //open the result file
    t=0:0.1:2*%pi;
    for tk=t
      fprintf(u,'time = %6.3f value = %6.3f',tk,`sin`_(tk)) // write a line
    end
    `file`_('close',u) //close the result file
    
    fprintf(0,'My error which is going to be displayed on the stderr')




See Also
~~~~~~~~


+ `mfprintf`_ converts, formats, and writes data to a file
+ `string`_ conversion to string
+ `print`_ prints variables in a file
+ `write`_ write in a formatted file
+ `format`_ number printing and display format
+ `disp`_ displays variables
+ `file`_ file management
+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `msprintf`_ converts, formats, and writes data in a string
+ `printf_conversion`_ mprintf, msprintf, mfprintf conversion
  specifications


.. _write: write.html
.. _print: print.html
.. _format: format.html
.. _printf_conversion: printf_conversion.html
.. _string: string.html
.. _mfprintf: mfprintf.html
.. _msprintf: msprintf.html
.. _mprintf: mprintf.html
.. _disp: disp.html
.. _file: file.html


