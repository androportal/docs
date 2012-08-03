====
"eqiir"
====

Scilab Function Last update : April 1993
**eqiir** - Design of iir filters



Calling Sequence
~~~~~~~~~~~~~~~~

[cells,fact,zzeros,zpoles]=eqiir(ftype,approx,om,deltap,deltas)




Parameters
~~~~~~~~~~


+ **ftype** : filter type ( **'lp','hp','sb','bp'** )
+ **approx** : design approximation (
  **'butt','cheb1','cheb2','ellip'** )
+ **om** : 4-vector of cutoff frequencies (in radians)
  **om=[om1,om2,om3,om4]** , **0 <= om1 <= om2 <= om3 <= om4 <= pi** .
  When **ftype** ='lp' or 'hp', **om3** and **om4** are not used and may
  be set to 0.
+ **deltap** : ripple in the passband. **0<= deltap <=1**
+ **deltas** : ripple in the stopband. **0<= deltas <=1**
+ **cells** : realization of the filter as second order cells
+ **fact** : normalization constant
+ **zzeros** : zeros in the z-domain
+ **zpoles** : poles in the z-domain




Description
~~~~~~~~~~~

Design of iir filter interface with eqiir (syredi)

The filter obtained is **h(z)=fact** *product of the elements of
**cells** .

That is **hz=fact*prod(cells(2))./prod(cells(3))**



Examples
~~~~~~~~


::

    
    
    [cells,fact,zzeros,zpoles]=...
    eqiir('lp','ellip',[2*%pi/10,4*%pi/10],0.02,0.001)
    transfer=fact*poly(zzeros,'z')/poly(zpoles,'z')
     
      




See Also
~~~~~~~~

` **eqfir** `_,` **iir** `_,

.. _
      : ://./signal/iir.htm
.. _
      : ://./signal/eqfir.htm


