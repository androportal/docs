


fftw_forget_wisdom
==================

Reset fftw wisdom



Calling Sequence
~~~~~~~~~~~~~~~~


::

    fftw_forget_wisdom()




Description
~~~~~~~~~~~

This function reset the current fftw wisdom.



Caveat
~~~~~~

This function do nothing in Scilab versions which use the MKL intel
library (Scilab official versions for windows in particular).



Examples
~~~~~~~~


::

    //return fftw wisdom
    txt=`get_fftw_wisdom`_();
    //set fftw wisdom
    `set_fftw_wisdom`_(txt);
    //reset fftw wisdom
    fftw_forget_wisdom();




See Also
~~~~~~~~


+ `get_fftw_wisdom`_ return fftw wisdom
+ `set_fftw_wisdom`_ set fftw wisdom


.. _set_fftw_wisdom: set_fftw_wisdom.html
.. _get_fftw_wisdom: get_fftw_wisdom.html


