====
"unix"
====

Scilab Function Last update : 16/12/2005
**unix** - shell (sh) command execution



Calling Sequence
~~~~~~~~~~~~~~~~

stat=unix(command-name)




Parameters
~~~~~~~~~~


+ **command-name** : A character string containing Unix sh instruction
+ **stat** : An integer flag




Description
~~~~~~~~~~~

Sends a string **command-name** to Unix for execution by the sh shell.
Standard output and standard errors of the shell command are written
in the calling shell. **stat** gives -1 if unix can't be called (Not
enough system memory available) or the sh return code.



Examples
~~~~~~~~


::

    
    if ~MSDOS then
      unix("ls $SCI/demos");
    end
    
    deff('wd=directory()','if MSDOS then unix(''cd>''+TMPDIR+''\path'');..
                    else unix(''pwd>''+TMPDIR+''/path'');end..
          wd=read(TMPDIR+''/path'',1,1,''(a)'')')
    wd=directory()
     
      




See Also
~~~~~~~~

` **edit** `_,` **manedit** `_,` **unix_g** `_,` **unix_s** `_,`
**unix_w** `_,` **unix_x** `_,` **host** `_,

.. _
      : ://./utilities/../functions/edit.htm
.. _
      : ://./utilities/unix_w.htm
.. _
      : ://./utilities/../fileio/manedit.htm
.. _
      : ://./utilities/unix_x.htm
.. _
      : ://./utilities/unix_s.htm
.. _
      : ://./utilities/../programming/host.htm
.. _
      : ://./utilities/unix_g.htm


