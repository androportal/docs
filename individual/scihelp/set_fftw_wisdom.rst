


set_fftw_wisdom
===============

set fftw wisdom



Calling Sequence
~~~~~~~~~~~~~~~~


::

    set_fftw_wisdom(txt)




Arguments
~~~~~~~~~

:txt String matrix that contains fftw wisdom.
:



Caveat
~~~~~~

This function is not implemented in Scilab versions which use the MKL
intel library (Scilab official versions for windows in particular).



Description
~~~~~~~~~~~

This function set the fftw wisdom with a string matrix.Using
`get_fftw_wisdom` and `set_fftw_wisdom` allows to optimize fft
efficiency if many calls have to be done on with same data sizes and
same options for the `fft`_ function.



Examples
~~~~~~~~


::

    sample_rate=1000;
    t = 0:1/sample_rate:40;
    N=`size`_(t,'*'); //number of samples
    s=`sin`_(2*%pi*50*t)+`sin`_(2*%pi*70*t+%pi/4)+`grand`_(1,N,'nor',0,1);
    `fftw_forget_wisdom`_();  
    `timer`_();y=`fft`_(s);t1=`timer`_() //first call
    `timer`_();y=`fft`_(s);t2=`timer`_()  //second call uses preserved wisdom
    t1/t2
    wisdom1=`get_fftw_wisdom`_(); //preserve current wisdom
    //realize a different fft
    A = `zeros`_(256,256);
    A(5:24,13:17) = 1;
    X = `fft`_(A);
    
    //Create a new signal with same size as s
    s1=`sin`_(2*%pi*10*t)+`sin`_(2*%pi*7*t+%pi/4)+5*`grand`_(1,N,'nor',0,1);
    //restore preserved wisdom
    set_fftw_wisdom(wisdom1);
    `timer`_();y=`fft`_(s);t3=`timer`_()
    t3/t2




See Also
~~~~~~~~


+ `get_fftw_wisdom`_ return fftw wisdom
+ `fftw_forget_wisdom`_ Reset fftw wisdom


.. _fft: fft.html
.. _fftw_forget_wisdom: fftw_forget_wisdom.html
.. _get_fftw_wisdom: get_fftw_wisdom.html


