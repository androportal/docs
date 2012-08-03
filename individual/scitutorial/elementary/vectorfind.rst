====
"vectorfind"
====

Scilab Function Last update : 13/01/2005
**vectorfind** - finds in a matrix rows or columns matching a vector



Calling Sequence
~~~~~~~~~~~~~~~~

ind = vectorfind(m,v,job)




Parameters
~~~~~~~~~~


+ **m** : a matrix of any type
+ **v** : vector of any type
+ **job** : string flag with possible values "r" to look for matching
  rows or "c" to look for matching columns
+ **ind** : row vector containing indices of matching rows or columns




Description
~~~~~~~~~~~

finds in a matrix rows or columns matching a vector



Examples
~~~~~~~~


::

    
    
          alr=[1,2,2;
    	   1,2,1;
    	   1,1,2;
    	   1,1,1;
    	   1,2,1];
          ind = vectorfind(alr,[1,2,1],'r')
          ind = vectorfind(string(alr),string([1,2,1]),'r')
      
      




See Also
~~~~~~~~

` **find** `_,` **gsort** `_,



Author
~~~~~~

R. Nikoukhah, S. Steer INRIA

.. _
      : ://./elementary/../programming/find.htm
.. _
      : ://./elementary/gsort.htm


