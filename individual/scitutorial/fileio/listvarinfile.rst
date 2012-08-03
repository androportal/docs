====
"listvarinfile"
====

Scilab Function Last update : 27/09/2005
**listvarinfile** - list the contents of a saved data file



Calling Sequence
~~~~~~~~~~~~~~~~

listvarinfile(filename)
[nams,typs,dims,vols]=listvarinfile(filename)




Parameters
~~~~~~~~~~


+ **filename** : character string, the pathname of the file to be
  inspected
+ **nams** : character array, names of the variables saved in the file
+ **dims** : list, dimensions of the variables saved in the file
+ **typs** : numeric array, types of the variables saved in the file
+ **vols** : numeric array, size in bytes of the variables saved in
  the file




Description
~~~~~~~~~~~

**** This utility function lists "a la ` **whos** `_" the variables
  contained in a Scilab data file produced by ` **save** `_. Remark:
  hypermatrices are reported as plain mlists; rationals and state-spaces
  are reported as plain tlists; graphic handles are not recognized.




Examples
~~~~~~~~


::

    
       a=eye(2,2); b=int16(ones(a)); c=rand(2,3,3);
       save("vals.dat",a,b,c)
       listvarinfile("vals.dat")
      




See Also
~~~~~~~~

` **whos** `_,` **save** `_,` **load** `_,` **save_format** `_,`
**type** `_,



Authors
~~~~~~~

**Serge Steer** 31 Jan 2001; reediting by Enrico Segre


.. _
      : ://./fileio/load.htm
.. _
      : ://./fileio/../programming/whos.htm
.. _
      : ://./fileio/../programming/type.htm
.. _
      : ://./fileio/save.htm
.. _
      : ://./fileio/save_format.htm


