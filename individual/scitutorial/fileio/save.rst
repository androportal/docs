====
"save"
====

Scilab Function Last update : 27/09/2005
**save** - saving variables in binary files



Calling Sequence
~~~~~~~~~~~~~~~~

save(filename [,x1,x2,...,xn])
save(fd [,x1,x2,...,xn])




Parameters
~~~~~~~~~~


+ **filename** : character string containing the path of the file
+ **fd** : a file descriptor given by a call to mopen
+ **xi** : arbitrary Scilab variable(s)




Description
~~~~~~~~~~~

The **save** command can be used to save Scilab current variables in a
binary file. If a variable is a graphic handle, the **save** function
saves all the corresponding ` **graphics_entities** `_ definition.

The file can be given either by its paths or by its descriptor
previously given by **mopen** .

**save(filename)** saves all current variables in the file defined by
**filename** .

**save(fd)** saves all current variables in the file defined by the
descriptor **fd** .

**save(filename,x,y)** or **save(fd,x,y)** saves only named variables
**x** and **y** .

Saved variables can be reloaded by the **load** command.



Examples
~~~~~~~~


::

    
    
    a=eye(2,2);b=ones(a);
    save('val.dat',a,b);
    clear a
    clear b
    load('val.dat','a','b');
    
    // sequential save into a file
    fd=mopen('TMPDIR/foo','wb')
    for k=1:4, x=k^2;save(fd,x,k),end
    mclose(fd)
    fd=mopen('TMPDIR/foo','rb')
    for i=1:4, load(fd,'x','k');x,k,end
    mclose(fd)
    
    // appending variables to an old save file
    fd=mopen('TMPDIR/foo','r+')
    mseek(0,fd,'end') 
    lst=list(1,2,3)
    save(fd,lst)
    mclose(fd)
    
     
      




See Also
~~~~~~~~

` **load** `_,` **save_format** `_,` **mopen** `_,

.. _
      : ://./fileio/load.htm
.. _
      : ://./fileio/save_format.htm
.. _
      : ://./fileio/../graphics/graphics_entities.htm
.. _
      : ://./fileio/mopen.htm


