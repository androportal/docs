


host
====

Unix or DOS command execution



Calling Sequence
~~~~~~~~~~~~~~~~


::

    stat=host(command-name)




Arguments
~~~~~~~~~

:command-name A character string containing Unix sh instruction
: :stat An integer flag
:



Description
~~~~~~~~~~~

Sends a string `command-name` to Unix for execution by the command
interpreter (sh under Unix, or command.com under DOS). Standard output
and standard errors of the shell command are written in the calling
shell. `stat` gives -1 if host can't be called (Not enough system
memory available) or the command interpreter return code.



Examples
~~~~~~~~


::

    //create a getdir function based on host
    function wd=getdir()
      if `getos`_() == 'Windows' then 
        host('cd>'+TMPDIR+'\path');
      else
        host('pwd>'+TMPDIR+'/path');
      end
      wd=`read`_(TMPDIR+'/path',1,1,'(a)')
    endfunction
    //call it
    wd=getdir()




See Also
~~~~~~~~


+ `edit`_ function editing
+ `manedit`_ editing a manual item
+ `unix_g`_ shell (sh) command execution, output redirected to a
  variable
+ `unix_s`_ shell (sh) command execution, no output
+ `unix_w`_ shell (sh) command execution, output redirected to scilab
  window
+ `unix_x`_ shell (sh) command execution, output redirected to a
  window


.. _manedit: manedit.html
.. _unix_s: unix_s.html
.. _unix_w: unix_w.html
.. _unix_x: unix_x.html
.. _edit: edit.html
.. _unix_g: unix_g.html


