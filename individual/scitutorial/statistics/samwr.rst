====
"samwr"
====

Scilab Function Last update : 13/01/2005
**samwr** - Sampling without replacement



Calling Sequence
~~~~~~~~~~~~~~~~

s = samwr(sizam,numsamp,X)




Parameters
~~~~~~~~~~


+ **sizam** : integer. Size of a sample. It must be less or equal than
  size of X.
+ **numsamp** : integer. Number of samples to be extracted.
+ **X** : column vector. It contains the population.
+ **s** : matrix of type sizsam x numsamp. It contains numsamp random
  samples (the columns) each of sizam (size(X,'*')) extractions, without
  replacement, from the column vector X.




Description
~~~~~~~~~~~

Gives samples without replacement from a column vector.



Examples
~~~~~~~~


::

    
        a=[0.33 1.24 2.1 1.03]
        s=samwr(4,12,a)
      




See Also
~~~~~~~~

` **sample** `_,` **samplef** `_,



Author
~~~~~~

Carlos Klimann

.. _
      : ://./statistics/sample.htm
.. _
      : ://./statistics/samplef.htm


