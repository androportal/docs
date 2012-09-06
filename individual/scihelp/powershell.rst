


powershell
==========

shell (powershell) command execution (Windows only)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    output=powershell(command-name)
    [output,bOK]=powershell(command-name)




Description
~~~~~~~~~~~

Sends a string command-name to Windows for execution by the
powershell. Standard output and standard errors of the shell command
are written in the calling shell. bOK returns if command has been
executed.



Examples
~~~~~~~~


::

    [s,w] = powershell('ls');




See Also
~~~~~~~~


+ `unix`_ shell (sh) command execution
+ `dos`_ shell (cmd) command execution (Windows only)


.. _unix: unix.html
.. _dos: dos.html


