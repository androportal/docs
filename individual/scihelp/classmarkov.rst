


classmarkov
===========

recurrent and transient classes of Markov matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [perm,rec,tr,indsRec,indsT]=classmarkov(M)




Arguments
~~~~~~~~~

:M real N x N Markov matrix. Sum of entries in each row should add to
  one.
: :perm integer permutation vector.
: :rec, tr integer vector, number (number of states in each recurrent
  classes, number of transient states).
: :indsRec,indsT integer vectors. (Indexes of recurrent and transient
  states).
:



Description
~~~~~~~~~~~

Returns a permutation vector `perm` such that


::

    M(perm,perm) = [M11 0 0 0 0   0]
                   [0 M22 0 0     0]
                   [0 0 M33       0]
                   [      ...      ]
                   [0 0       Mrr 0]
                   [* *        *  Q]


Each `Mii` is a Markov matrix of dimension `rec(i) i=1,..,r`. `Q` is
sub-Markov matrix of dimension `tr`. States 1 to sum(rec) are
recurrent and states from r+1 to n are transient. One has
`perm=[indsRec,indsT]` where indsRec is a vector of size sum(rec) and
indsT is a vector of size tr.



Examples
~~~~~~~~


::

    //P has two recurrent classes (with 2 and 1 states) 2 transient states
    P=`genmarkov`_([2,1],2,'perm')
    [perm,rec,tr,indsRec,indsT]=classmarkov(P);
    P(perm,perm)




See Also
~~~~~~~~


+ `genmarkov`_ generates random markov matrix with recurrent and
  transient classes
+ `eigenmarkov`_ normalized left and right Markov eigenvectors


.. _eigenmarkov: eigenmarkov.html
.. _genmarkov: genmarkov.html


