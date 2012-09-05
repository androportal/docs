


fftw_flags
==========

set method for fft planner algorithm selection



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [a,[S]]=fftw_flags(flag)




Arguments
~~~~~~~~~

:flag a string or an integer. Specifies the planner algorithm. See
  below.
: :a an integer. The planner code. See below.
: :S a character string. The planner name.
:



Description
~~~~~~~~~~~

This function enables the selection of the algorithm used to determine
the fftw planner algorithm. The planner is used to determine an
efficient way to compute the fft.

Warning: the default value "FFTW_MEASURE" gives quite efficient plans.
Try to change it only if the fft efficiency is really important and
you have a lot of simmilar calls to do.

Accepted entries are :


+ FFTW_ESTIMATE or 64. Specifies that, instead of actual measurements
  of different algorithms, a simple heuristic is used to pick a
  (probably sub-optimal) plan quickly. With this flag, the input/output
  arrays are not overwritten during planning. It is the defailt value
+ "FFTW_MEASURE" or 0. tells FFTW to find an optimized plan by
  actually computing several FFTs and measuring their execution time.
  Depending on your machine, this can take some time (often a few
  seconds). planning option.
+ FFTW_PATIENT or 32. It is like "FFTW_MEASURE", but considers a wider
  range of algorithms and often produces a “more optimal” plan
  (especially for large transforms), but at the expense of several times
  longer planning time (especially for large transforms).
+ FFTW_EXHAUSTIVE or 8. It is like "FFTW_PATIENT", but considers an
  even wider range of algorithms, including many that we think are
  unlikely to be fast, to produce the most optimal plan but with a
  substantially increased planning time.


Remark : when using FFTW_MEASURE/FFTW_PATIENT/FFTW_EXHAUSTIVE you must
call two times fftw. (first call for initialisation, second and others
calls for computation)



Examples
~~~~~~~~


::

    A=`rand`_(1,2^9+2^15+2^17);
    `fftw_forget_wisdom`_();
    fftw_flags("FFTW_ESTIMATE");
    `timer`_();y=`fft`_(A);`timer`_()//first call determines the plan
    `timer`_();y=`fft`_(A);`timer`_() //subsequent similar calls
    fftw_flags("FFTW_MEASURE");
    `fftw_forget_wisdom`_();
    `timer`_();y=`fft`_(A);`timer`_()//first call determines the plan
    `timer`_();y=`fft`_(A);`timer`_() //subsequent similar calls




See Also
~~~~~~~~


+ `fft`_ fast Fourier transform.
+ `set_fftw_wisdom`_ set fftw wisdom
+ `get_fftw_wisdom`_ return fftw wisdom
+ `fftw_forget_wisdom`_ Reset fftw wisdom


.. _fft: fft.html
.. _set_fftw_wisdom: set_fftw_wisdom.html
.. _fftw_forget_wisdom: fftw_forget_wisdom.html
.. _get_fftw_wisdom: get_fftw_wisdom.html


