


unix_g
======

shell (sh) command execution, output redirected to a variable



Calling Sequence
~~~~~~~~~~~~~~~~


::

    rep=unix_g(cmd)
    [rep,stat]=unix_g(cmd)
    [rep,stat,stderr]=unix_g(cmd)




Arguments
~~~~~~~~~

:cmd a character string
: :rep a column vector of character strings (standard output)
: :stat an integer, the error status. stat=0 if no error occurred
: :err a column vector of character strings (standard error)
:



Description
~~~~~~~~~~~

Sends a string `cmd` to Unix for execution by the sh shell. The
standard output is redirected to scilab variable `rep`. The standard
error is redirected to scilab variable err or displays if you had only
2 output arguments. Unix execution errors are trapped; *NOTE* that
only the last shell command error is reported when a list of command
separated by ";" is sent: this is not recommended.



Examples
~~~~~~~~


::

    function d=DIR(path)
      path=`pathconvert`_(path,%t,%t)
      if `getos`_() == 'Windows' then
        d=unix_g('dir '+path)
      else
        d=unix_g('ls '+path)
      end
    endfunction
    
    DIR('SCI/etc')




See Also
~~~~~~~~


+ `unix_s`_ shell (sh) command execution, no output
+ `unix_w`_ shell (sh) command execution, output redirected to scilab
  window
+ `unix_x`_ shell (sh) command execution, output redirected to a
  window
+ `unix`_ shell (sh) command execution


.. _unix_s: unix_s.html
.. _unix_x: unix_x.html
.. _unix: unix.html
.. _unix_w: unix_w.html


