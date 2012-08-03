====
"sci2exp"
====

Scilab Function Last update : April 1993
**sci2exp** - converts an expression to a string



Calling Sequence
~~~~~~~~~~~~~~~~

t=sci2exp(a [,nam] [,lmax])




Parameters
~~~~~~~~~~


+ **a** : a scilab expression, may be

    + **- ** constant,
    + **- ** polynomial
    + **- ** string matrix
    + **- ** list
    + **- ** boolean matrix

+ **nam** : character string
+ **t** : vector of string, contains the expression or the affectation
  instruction
+ **lmax** : integer, contains the maximum line length. default value
  is 90, **lmax=0** indicate no line length control a single string is
  returned




Description
~~~~~~~~~~~

**sci2exp** converts expression to an instruction string if **nam** is
given or to an expression string.



Examples
~~~~~~~~


::

    
    
      a=[1 2;3 4]
      sci2exp(a,'aa')
      sci2exp(a,'aa',0)
      sci2exp(ssrand(2,2,2))
      sci2exp(poly([1 0 3 4],'s'),'fi')
     
      




