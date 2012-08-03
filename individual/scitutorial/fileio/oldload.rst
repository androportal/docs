====
"oldload"
====

Scilab Function Last update : April 1993
**oldload** - load saved variable in 2.4.1 and previous formats



Calling Sequence
~~~~~~~~~~~~~~~~

oldload('file-name' [,x1,...,xn])




Parameters
~~~~~~~~~~


+ **file-name** : character string
+ **xi** : arbitrary Scilab variable name(s) given as strings.




Description
~~~~~~~~~~~

The **oldload** function is obsolete and is retained only for
compatibility purpose.

The **oldload** command can be used to reload in the Scilab session
variables previously saved in a file with the **save** command.

**oldload('file-name')** loads the variables saved in file **'file-
name'** .

**oldload('file-name','x','y',...,'z')** loads only variables
**x,y,...,z** stored in file **'file-name'** .



Examples
~~~~~~~~


::

    
    
    a=eye(2,2);b=ones(a);
    oldsave(TMPDIR+'/vals.dat',a,b);
    clear a
    clear b
    oldload(TMPDIR+'/vals.dat','a','b');
     
      




See Also
~~~~~~~~

` **save** `_,` **getf** `_,

.. _
      : ://./fileio/save.htm
.. _
      : ://./fileio/../functions/getf.htm


