


unix_x
======

shell (sh) command execution, output redirected to a window



Calling Sequence
~~~~~~~~~~~~~~~~


::

    unix_x(cmd)




Arguments
~~~~~~~~~

:cmd a character string
:



Description
~~~~~~~~~~~

Sends a string `cmd` to Unix for execution by the sh shell. The
standard output is redirected to a window. Unix execution errors are
trapped; *NOTE* that only the last shell command error is reported
when a list of command separated by ";" is sent: this is not
recommended.



Examples
~~~~~~~~


::

    if `getos`_() == 'Windows' then 
      unix_x("dir "+""""+WSCI+"modules\graphics\demos"+""""); 
    else 
      unix_x("ls $SCI/modules/graphics/demos");
    end




See Also
~~~~~~~~


+ `edit`_ function editing
+ `manedit`_ editing a manual item
+ `unix_g`_ shell (sh) command execution, output redirected to a
  variable
+ `unix_s`_ shell (sh) command execution, no output
+ `unix_w`_ shell (sh) command execution, output redirected to scilab
  window
+ `unix`_ shell (sh) command execution


.. _manedit: manedit.html
.. _unix_s: unix_s.html
.. _unix_w: unix_w.html
.. _edit: edit.html
.. _unix: unix.html
.. _unix_g: unix_g.html


