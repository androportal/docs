


obsv_mat
========

observability matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [O]=obsv_mat(A,C)
    [O]=obsv_mat(sl)




Arguments
~~~~~~~~~

:A,C,O real matrices
: :sl `syslin` list
:



Description
~~~~~~~~~~~

`obsv_mat` returns the observability matrix:


::

    O=[C; CA; CA^2;...; CA^(n-1) ]




See Also
~~~~~~~~


+ `contrss`_ controllable part
+ `obsvss`_ observable part
+ `obs_gram`_ observability gramian


.. _obs_gram: obs_gram.html
.. _obsvss: obsvss.html
.. _contrss: contrss.html


