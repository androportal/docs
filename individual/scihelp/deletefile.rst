


deletefile
==========

deletes a file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    f = deletefile(filename)




Arguments
~~~~~~~~~

:filename a string: a file name existing or not
: :f a boolean: `%t` or `%f`
:



Description
~~~~~~~~~~~

This function deletes a file. If file has been deleted, it will return
`%t` else `%f`.



Examples
~~~~~~~~


::

    fd = `mopen`_(TMPDIR+'/filetodelete.txt','wt');
    `mclose`_(fd); 
    
    if (`fileinfo`_(TMPDIR+'/filetodelete.txt') <> []) then 
    deletefile(TMPDIR+'/filetodelete.txt')
    end
    
    deletefile(TMPDIR+'/notexistingfile')




