====
"unix_s"
====

Scilab Function Last update : April 1993
**unix_s** - shell (sh) command execution, no output



Calling Sequence
~~~~~~~~~~~~~~~~

unix_s(cmd)




Parameters
~~~~~~~~~~


+ **cmd** : a character string




Description
~~~~~~~~~~~

Sends a string **cmd** to Unix for execution by the sh shell. The
standard output is redirected to /dev/null. Unix execution errors are
trapped; *NOTE* that only the last shell command error is reported
when a list of command separated by ";" is sent: this is not
recommended.



Examples
~~~~~~~~


::

    
    
    if MSDOS then 
      unix_s("del foo");
    else 
      unix_s("rm -f foo"); 
    end
     
      




See Also
~~~~~~~~

` **edit** `_,` **manedit** `_,` **unix_g** `_,` **unix_w** `_,`
**unix_x** `_,` **unix** `_,

.. _
      : ://./utilities/../functions/edit.htm
.. _
      : ://./utilities/unix_w.htm
.. _
      : ://./utilities/../fileio/manedit.htm
.. _
      : ://./utilities/unix_x.htm
.. _
      : ://./utilities/unix.htm
.. _
      : ://./utilities/unix_g.htm


