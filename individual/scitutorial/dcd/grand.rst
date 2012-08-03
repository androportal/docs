====
"grand"
====

Scilab Function Last update : 11/04/2005
**grand** - Random number generator(s)



Calling Sequence
~~~~~~~~~~~~~~~~

Y=grand(m, n, dist_type [,p1,...,pk])
Y=grand(X, dist_type [,p1,...,pk])
Y=grand(n, dist_type [,p1,...,pk])
S=grand(action [,q1,....,ql])




Parameters
~~~~~~~~~~


+ **m, n** : integers, size of the wanted matrix **Y**
+ **X** : a matrix whom only the dimensions (say **m x n** ) are used
+ **dist_type** : a string given the distribution which (independants)
  variates are to be generated ('bin', 'nor', 'poi', etc ...)
+ **p1, ..., pk** : the parameters (reals or integers) required to
  define completly the distribution **dist_type**
+ **Y** : the resulting **m x n** random matrix
+ **action** : a string given the action onto the base generator(s)
  ('setgen' to change the current base generator, 'getgen' to retrieve
  the current base generator name, 'getsd' to retrieve the state (seeds)
  of the current base generator, etc ...)
+ **q1, ..., ql** : the parameters (generally one string) needed to
  define the action
+ **S** : output of the action (generaly a string or a real column
  vector)




Description
~~~~~~~~~~~

This function may be used to generate random numbers from various
distributions. In this case you must apply one of the **three first
forms** of the possible calling sequences to get an **m x n** matrix.
The two firsts are equivalent if **X** is a **m x n** matrix, and the
third form corresponds to 'multivalued' distributions (e.g.
multinomial, multivariate gaussian, etc...) where a sample is a column
vector (says of dim **m** ) and you get then **n** such random vectors
(as an ** m x n** matrix). **The last form** is used to undertake
various manipulations onto the base generators like changing the base
generator (since v 2.7 you may choose between several base
generators), changing or retrieving its internal state (seeds), etc
... These base generators give random integers following a uniform
distribution on a large integer interval (lgi), all the others
distributions being gotten from it (in general via a scheme lgi ->
U([0,1)) -> wanted distribution).



Getting random numbers from a given distribution
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


