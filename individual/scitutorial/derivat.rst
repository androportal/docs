


derivat
=======

rational matrix derivative



Calling Sequence
~~~~~~~~~~~~~~~~


::

    pd=derivat(p)




Arguments
~~~~~~~~~

:p polynomial or rational matrix
:



Description
~~~~~~~~~~~

computes the derivative of the polynomial or rational function matrix
w.r.t the dummy variable.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    derivat(1/s)  // -1/s^2;




