====
"unix_g"
====

Scilab Function Last update : April 1993
**unix_g** - shell (sh) command execution, output redirected to a
variable



Calling Sequence
~~~~~~~~~~~~~~~~

rep=unix_g(cmd)
[rep,stat]=unix_g(cmd)




Parameters
~~~~~~~~~~


+ **cmd** : a character string
+ **rep** : a column vector of character strings
+ **stat** : a integer, the error status. stat=0 if no error occured




Description
~~~~~~~~~~~

Sends a string **cmd** to Unix for execution by the sh shell. The
standard output is redirected to scilab variable **rep** . Unix
execution errors are trapped; *NOTE* that only the last shell command
error is reported when a list of command separated by ";" is sent:
this is not recommended.



Examples
~~~~~~~~


::

    
    
    function d=DIR(path)
      path=pathconvert(path,%t,%t)
      if MSDOS then
        d=unix_g('dir '+path)
      else
        d=unix_g('ls '+path)
      end
    endfunction
    
    DIR('SCI/demos')
     
      




See Also
~~~~~~~~

` **unix_s** `_,` **unix_w** `_,` **unix_x** `_,` **unix** `_,

.. _
      : ://./utilities/unix_s.htm
.. _
      : ://./utilities/unix.htm
.. _
      : ://./utilities/unix_w.htm
.. _
      : ://./utilities/unix_x.htm


