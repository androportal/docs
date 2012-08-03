====
"unix_w"
====

Scilab Function Last update : 16/12/2005
**unix_w** - shell (sh) command execution, output redirected to scilab
window



Calling Sequence
~~~~~~~~~~~~~~~~

unix_w(cmd)




Parameters
~~~~~~~~~~


+ **cmd** : a character string




Description
~~~~~~~~~~~

Sends a string **cmd** to Unix for execution by the sh shell. The
standard output is redirected to scilab window. Unix execution errors
are trapped; *NOTE* that only the last shell command error is reported
when a list of command separated by ";" is sent: this is not
recommended.



Examples
~~~~~~~~


::

    if MSDOS then
      unix_w("dir "+'""'+WSCI+"\demos"+'""'); 
    else 
      unix_w("ls $SCI/demos");
    end
     
      




See Also
~~~~~~~~

` **edit** `_,` **manedit** `_,` **unix_g** `_,` **unix_s** `_,`
**unix_x** `_,` **unix** `_,

.. _
      : ://./utilities/unix.htm
.. _
      : ://./utilities/../functions/edit.htm
.. _
      : ://./utilities/../fileio/manedit.htm
.. _
      : ://./utilities/unix_x.htm
.. _
      : ://./utilities/unix_s.htm
.. _
      : ://./utilities/unix_g.htm


