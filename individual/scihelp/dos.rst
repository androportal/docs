


dos
===

shell (cmd) command execution (Windows only)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    bOK=dos(command-name)
    bOK=dos(command-name,'-echo')
    [output,bOK]=dos(command-name)
    [output,bOK,exitcode]=dos(command-name)
    [output,bOK]=dos(command-name,'-echo')
    [output,bOK,exitcode]=dos(command-name,'-echo')




Description
~~~~~~~~~~~

Sends a string command-name to Windows for execution by the cmd shell.
Standard output and standard errors of the shell command are written
in the calling shell. bOK returns if command has been executed.

[output,bOK] = dos(command-name,'-echo') forces the output to the
Command Window, even though it is also being assigned into a variable.

exitcode value returned by the external process.

To open the notepad editor and return control immediately to Scilab
dos('start notepad')



Examples
~~~~~~~~


::

    [s,w] = dos('dir');
    [s,w] = dos('dir','-echo');
    dos('start notepad')
    dos('taskkill /IM notepad.exe') // Caution, this command will kill all launched notepad's processus
    [s, w] = dos('foo')
    [s, w, code] = dos('dir')
    [s, w, code] = dos('foo')




See Also
~~~~~~~~


+ `unix`_ shell (sh) command execution


.. _unix: unix.html


