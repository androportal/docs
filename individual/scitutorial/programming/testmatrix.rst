====
"testmatrix"
====

Scilab Function Last update : April 1993
**testmatrix** - generate some particular matrices



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=testmatrix(name,n)




Parameters
~~~~~~~~~~


+ **name** : a character string
+ **n** : integers, matrix size
+ **y** : **n** x **m** matrix




Description
~~~~~~~~~~~

Create some particular matrices

**testmatrix('magi',n)**: returns a magic square of size **n** .
**testmatrix('frk',n)**: returns the Franck matrix :
**testmatrix('hilb',n)**: is the inverse of the nxn Hilbert matrix **
  (Hij= 1/(i+j-1))** .




