====
"zpell"
====

Scilab Function Last update : April 1993
**zpell** - lowpass elliptic filter



Calling Sequence
~~~~~~~~~~~~~~~~

[zeros,poles,gain]=zpell(epsilon,A,omegac,omegar)




Parameters
~~~~~~~~~~


+ **epsilon** : real : ripple of filter in pass band ( **0<epsilon<1**
  )
+ **A** : real : attenuation of filter in stop band ( **A>1** )
+ **omegac** : real : pass band cut-off frequency in Hertz
+ **omegar** : real : stop band cut-off frequency in Hertz
+ **zeros** : resulting zeros of filter
+ **poles** : resulting poles of filter
+ **gain** : resulting gain of filter




Description
~~~~~~~~~~~

Poles and zeros of prototype lowpass elliptic filter. **gain** is the
gain of the filter



See Also
~~~~~~~~

` **ell1mag** `_,` **eqiir** `_,



Author
~~~~~~

F.D.

.. _
      : ://./signal/eqiir.htm
.. _
      : ://./signal/ell1mag.htm


