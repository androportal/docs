====
"fnonsingleton"
====

M2SCI Function Last update : 30/03/2004
**firstnonsingleton** - Finds first dimension which is not 1



Calling Sequence
~~~~~~~~~~~~~~~~

[dim]=firstnonsingleton(A[,opt])




Parameters
~~~~~~~~~~


+ **dim** : first dimension of A which is not 1
+ **A** : a variable of any Scilab data type
+ **opt** : a character string giving the type of output we want

    + **"num"** : returned value is a numerical value
    + **"str"** : returned value is a character string if possible ("r"
      instead of 1 and "c" instead of 2)





Description
~~~~~~~~~~~

This function is used by **mfile2sci** to emulate Matlab behavior
under Scilab, particularly for functions which treat the values along
the first non-singleton dimension of A in Matlab while in Scilab they
treat all values of A.



Examples
~~~~~~~~


::

    
    
    A = [1 2 3;4 5 6];
    // Scilab max
    M = max(A)
    // Matlab max emulation
    M = max(A,firstnonsingleton(A))
     
      




Authors
~~~~~~~

****V.C.




