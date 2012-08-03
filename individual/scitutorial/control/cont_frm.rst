====
"cont_frm"
====

Scilab Function Last update : April 1993
**cont_frm** - transfer to controllable state-space



Calling Sequence
~~~~~~~~~~~~~~~~

[sl]=cont_frm(NUM,den)




Parameters
~~~~~~~~~~


+ **NUM** : polynomial matrix
+ **den** : polynomial
+ **sl** : **syslin** list, **sl=[A,B,C,D]** .




Description
~~~~~~~~~~~

controllable state-space form of the transfer **NUM/den** .



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');NUM=[1+s,s];den=s^2-5*s+1;
    sl=cont_frm(NUM,den); 
    slss=ss2tf(sl);       //Compare with NUM/den
     
      




See Also
~~~~~~~~

` **tf2ss** `_,` **canon** `_,` **contr** `_,

.. _
      : ://./control/canon.htm
.. _
      : ://./control/tf2ss.htm
.. _
      : ://./control/contr.htm


