


mkdir
=====

Make new directory



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mkdir('dirname')
    mkdir('parentdir','newdir')
    status=mkdir( ... )
    [status,msg]=mkdir( ... )




Description
~~~~~~~~~~~

`mkdir('dirname')` creates the directory `dirname` in the current
directory, if `dirname` represents a relative path. Otherwise,
`dirname` represents an absolute path and mkdir attempts to create the
absolute directory `dirname`

`mkdir('parentdir', 'dirname')` creates the directory `dirname` in the
existing directory `parentdir`, where `parentdir` is an absolute or
relative pathname.

`[status,message] = mkdir(parentdir, 'dirname')` creates the directory
`dirname` in the existing directory `parentdir`, returning the status,
a message. Here, status is 1 for success, 2 if it already exists, -2
if it is a filename and 0 otherwise.



Examples
~~~~~~~~


::

    // Absolute pathname
    mkdir(TMPDIR+"/mkdir_example_1")
    status_2 = mkdir(TMPDIR+"/mkdir_example_2")
    [status_3,msg_3] = mkdir(TMPDIR+"/mkdir_example_3")
    
    // Absolute pathname (parentdir + dirname)
    [status_4,msg_4] = mkdir(TMPDIR,"mkdir_example_4")
    
    // Relative pathname
    `cd`_ TMPDIR;
    [status_5,msg_5] = mkdir("mkdir_example_5")
    [status_6,msg_6] = mkdir("mkdir_example_5/mkdir_example_6")




See Also
~~~~~~~~


+ `cd`_
+ `dir`_ gets file list
+ `rmdir`_ Remove a directory


.. _cd: chdir.html#cd
.. _dir: dir.html
.. _rmdir: rmdir.html


