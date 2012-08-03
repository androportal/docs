====
"host"
====

Scilab Function Last update : 08/04/2005
**host** - Unix or DOS command execution



Calling Sequence
~~~~~~~~~~~~~~~~

stat=host(command-name)




Parameters
~~~~~~~~~~


+ **command-name** : A character string containing Unix sh instruction
+ **stat** : An integer flag




Description
~~~~~~~~~~~

Sends a string **command-name** to Unix for execution by the command
interpreter (sh under Unix, or command.com under DOS). Standard output
and standard errors of the shell command are written in the calling
shell. **stat** gives -1 if host can't be called (Not enough system
memory available) or the command interpreter return code.



Examples
~~~~~~~~


::

    
    
        //create a getdir function based on host
        function wd=getdir()
          if MSDOS then 
            host('cd>'+TMPDIR+'\path');
          else
            host('pwd>'+TMPDIR+'/path');
          end
          wd=read(TMPDIR+'/path',1,1,'(a)')
        endfunction
        //call it
        wd=getdir()
     
      




See Also
~~~~~~~~

` **edit** `_,` **manedit** `_,` **unix_g** `_,` **unix_s** `_,`
**unix_w** `_,` **unix_x** `_,

.. _
      : ://./programming/../fileio/manedit.htm
.. _
      : ://./programming/../utilities/unix_g.htm
.. _
      : ://./programming/../utilities/unix_s.htm
.. _
      : ://./programming/../utilities/unix_x.htm
.. _
      : ://./programming/../utilities/unix_w.htm
.. _
      : ://./programming/../functions/edit.htm


