


genmarkov
=========

generates random markov matrix with recurrent and transient classes



Calling Sequence
~~~~~~~~~~~~~~~~


::

    M=genmarkov(rec,tr)
    M=genmarkov(rec,tr,flag)




Arguments
~~~~~~~~~

:rec integer row vector (its dimension is the number of recurrent
  classes).
: :tr integer (number of transient states)
: :M real Markov matrix. Sum of entries in each row should add to one.
: :flag string `'perm'`. If given, a random permutation of the states
  is done.
:



Description
~~~~~~~~~~~

Returns in M a random Markov transition probability matrix with
`size(rec,1)` recurrent classes with `rec(1),...rec($)` entries
respectively and tr transient states.



Examples
~~~~~~~~


::

    //P has two recurrent classes (with 2 and 1 states) 2 transient states
    P=genmarkov([2,1],2,'perm')
    [perm,rec,tr,indsRec,indsT]=`classmarkov`_(P);
    P(perm,perm)




See Also
~~~~~~~~


+ `classmarkov`_ recurrent and transient classes of Markov matrix
+ `eigenmarkov`_ normalized left and right Markov eigenvectors


.. _eigenmarkov: eigenmarkov.html
.. _classmarkov: classmarkov.html


