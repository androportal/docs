


cont_frm
========

transfer to controllable state-space



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [sl]=cont_frm(NUM,den)




Arguments
~~~~~~~~~

:NUM polynomial matrix
: :den polynomial
: :sl `syslin` list, `sl=[A,B,C,D]`.
:



Description
~~~~~~~~~~~

controllable state-space form of the transfer `NUM/den`.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');NUM=[1+s,s];den=s^2-5*s+1;
    sl=cont_frm(NUM,den); 
    slss=`ss2tf`_(sl);       //Compare with NUM/den




See Also
~~~~~~~~


+ `tf2ss`_ transfer to state-space
+ `canon`_ canonical controllable form
+ `contr`_ controllability, controllable subspace, staircase


.. _canon: canon.html
.. _tf2ss: tf2ss.html
.. _contr: contr.html


