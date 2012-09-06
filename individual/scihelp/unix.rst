


unix
====

shell (sh) command execution



Calling Sequence
~~~~~~~~~~~~~~~~


::

    stat=unix(command-name)




Arguments
~~~~~~~~~

:command-name A character string containing Unix sh instruction
: :stat An integer flag
:



Description
~~~~~~~~~~~

Sends a string `command-name` to Unix for execution by the sh shell.
Standard output and standard errors of the shell command are written
in the calling shell. `stat` gives -1 if unix can't be called (Not
enough system memory available) or the sh return code.



Examples
~~~~~~~~


::

    if `getos`_() <> 'Windows' then
      unix("ls $SCI/demos");
    end
    
    function wd=directory()
      if `getos`_() == 'Windows' then
        unix('cd>'+TMPDIR+'\path');
      else
        unix('pwd>'+TMPDIR+'/path');
      end
      wd=`read`_(TMPDIR+'/path',1,1,'(a)');
    endfunction
    
    wd=directory()




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
+ `host`_ Unix or DOS command execution


.. _manedit: manedit.html
.. _unix_s: unix_s.html
.. _unix_w: unix_w.html
.. _unix_x: unix_x.html
.. _edit: edit.html
.. _host: host.html
.. _unix_g: unix_g.html


