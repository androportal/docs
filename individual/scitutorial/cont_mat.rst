


cont_mat
========

controllability matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Cc=cont_mat(A,B)
    Cc=cont_mat(sl)




Arguments
~~~~~~~~~

:a,b two real matrices of appropriate dimensions
: :sl linear system ( `syslin` list)
:



Description
~~~~~~~~~~~

`cont_mat` returns the controllability matrix of the pair `A,B` (resp.
of the system `sl=[A,B,C,D]`).


::

    Cc=[B, AB, A^2 B,..., A^(n-1) B]




See Also
~~~~~~~~


+ `ctr_gram`_ controllability gramian
+ `contr`_ controllability, controllable subspace, staircase
+ `canon`_ canonical controllable form
+ `st_ility`_ stabilizability test


.. _st_ility: st_ility.html
.. _canon: canon.html
.. _contr: contr.html
.. _ctr_gram: ctr_gram.html


