====
"sprand"
====

Scilab Function Last update : January 1995
**sprand** - sparse random matrix



Calling Sequence
~~~~~~~~~~~~~~~~

sp=sprand(nrows,ncols,fill [,typ])




Parameters
~~~~~~~~~~


+ **nrows** : integer (number of rows)
+ **ncols** : integer (number of columns)
+ **fill** : filling coefficient (density)
+ **typ** : character string ( **'uniform'** (default) or **'normal'**
  )
+ **sp** : sparse matrix




Description
~~~~~~~~~~~

**sp=sprand(nrows,ncols,fill)** returns a sparse matrix **sp** with
**nrows** rows, **ncols** columns and approximately
**fill*nrows*ncols** non-zero entries.

If **typ='uniform'** uniformly distributed values on [0,1] are
generated. If **typ='normal'** normally distributed values are
generated (mean=0 and standard deviation=1).



Examples
~~~~~~~~


::

    
    
    W=sprand(100,1000,0.001);
     
      




See Also
~~~~~~~~

` **sparse** `_,` **full** `_,` **rand** `_,` **speye** `_,

.. _
      : ://./elementary/speye.htm
.. _
      : ://./elementary/sparse.htm
.. _
      : ://./elementary/rand.htm
.. _
      : ://./elementary/full.htm


