====
"load"
====

Scilab Function Last update : 27/09/2005
**load** - load saved variable



Calling Sequence
~~~~~~~~~~~~~~~~

load(filename [,x1,...,xn])
load(fd [,x1,...,xn])




Parameters
~~~~~~~~~~


+ **filename** : character string containing the path of the file
+ **fd** : a file descriptor given by a call to mopen
+ **xi** : arbitrary Scilab variable name(s) given as strings.




Description
~~~~~~~~~~~

The **load** command can be used to reload in the Scilab session
variables previously saved in a file with the **save** command. If the
file contains graphic handle variables, the corresponding `
**graphics_entities** `_ are drawn.

**load(filename)** loads the variables saved in file given by its path
**filename** .

**load(fd)** loads the variables saved in file given by its descriptor
**fd** .

**load(filename,'x','y')** or **load(fd,'x','y')** loads only
variables **x,y** .

Even if the binary file format has changed with 2.5 version,
**load(filename,...)** is able to read old format files. Previous file
format can be accessed for a while using function oldsave ans oldload.



Examples
~~~~~~~~


::

    
    
    a=eye(2,2);b=ones(a);
    save('vals.dat',a,b);
    clear a
    clear b
    load('vals.dat','a','b');
     
      




See Also
~~~~~~~~

` **save** `_,` **listvarinfile** `_,` **save_format** `_,` **getf**
`_,` **mopen** `_,

.. _
      : ://./fileio/mopen.htm
.. _
      : ://./fileio/listvarinfile.htm
.. _
      : ://./fileio/save.htm
.. _
      : ://./fileio/save_format.htm
.. _
      : ://./fileio/../graphics/graphics_entities.htm
.. _
      : ://./fileio/../functions/getf.htm


