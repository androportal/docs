====
"oldsave"
====

Scilab Function Last update : April 1999
**oldsave** - saving variables in 2.4.1 and previous format



Calling Sequence
~~~~~~~~~~~~~~~~

oldsave(filename [,x1,x2,...,xn])




Parameters
~~~~~~~~~~


+ **filename** : character string or a logical unit returned by
  file('open',...)
+ **xi** : arbitrary Scilab variable(s)




Description
~~~~~~~~~~~

The **oldsave** function is obsolete and is retained only for
compatibility purpose.

The **oldsave** command can be used to save Scilab current variables
in binary form in a file.

**oldsave(filename)** saves all current variables in the file defined
by **filename** .

**oldsave(file-name,x,y)** saves only named variables **x** and **y**
.

Saved variables can be reloaded by the **load** or oldload command.



Examples
~~~~~~~~


::

    
    
    a=eye(2,2);b=ones(a);
    oldsave('TMPDIR/val.dat',a,b);
    clear a
    clear b
    oldload('TMPDIR/val.dat','a','b');
    
     
      




See Also
~~~~~~~~

` **load** `_,` **file** `_,

.. _
      : ://./fileio/load.htm
.. _
      : ://./fileio/file.htm


