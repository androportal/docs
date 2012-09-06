


unix_w
======

shell (sh) command execution, output redirected to scilab window



Calling Sequence
~~~~~~~~~~~~~~~~


::

    unix_w(cmd)




Arguments
~~~~~~~~~

:cmd a character string
:



Description
~~~~~~~~~~~

Sends a string `cmd` to Unix for execution by the sh shell. The
standard output is redirected to scilab window. Unix execution errors
are trapped; *NOTE* that only the last shell command error is reported
when a list of command separated by ";" is sent: this is not
recommended.



Examples
~~~~~~~~


::

    if `getos`_() == 'Windows' then
      unix_w("dir "+'""'+WSCI+"\modules"+'""'); 
    else 
      unix_w("ls $SCI/modules");
    end




See Also
~~~~~~~~


+ `edit`_ function editing
+ `manedit`_ editing a manual item
+ `unix_g`_ shell (sh) command execution, output redirected to a
  variable
+ `unix_s`_ shell (sh) command execution, no output
+ `unix_x`_ shell (sh) command execution, output redirected to a
  window
+ `unix`_ shell (sh) command execution


.. _manedit: manedit.html
.. _unix_s: unix_s.html
.. _unix_x: unix_x.html
.. _edit: edit.html
.. _unix: unix.html
.. _unix_g: unix_g.html


