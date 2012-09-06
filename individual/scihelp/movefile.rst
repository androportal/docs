


movefile
========

Move file or directory



Calling Sequence
~~~~~~~~~~~~~~~~


::

    movefile('source','destination')
    [status,message] = movefile('source','destination')




Description
~~~~~~~~~~~

movefile('source','destination') moves the file or directory , source
(and subdirectories) to the file or directory, destination.

If source is a directory, destination can not be a file. movefile
replaces existing files without warning.

[status, message] = movefile('source','destination') moves source to
destination, returning the status and a message.

Whatever the operating system, if the move succeeds, the status is 1
and the message is empty ; if the move fails, the status is 0 and the
message is not empty.



Examples
~~~~~~~~


::

    `copyfile`_(SCI+"/etc/scilab.start",TMPDIR+"/scilab.start")
    [status,message] = movefile(TMPDIR+"/scilab.start",TMPDIR+"/renamed_scilab.start")




See Also
~~~~~~~~


+ `copyfile`_ copies a file


.. _copyfile: copyfile.html


