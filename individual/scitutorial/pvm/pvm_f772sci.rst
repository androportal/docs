====
"pvm_f772sci"
====

Scilab function Last update : May 1998
**pvm_f772sci** - Convert a F77 complex into a complex scalar



Calling Sequence
~~~~~~~~~~~~~~~~

[res] = pvm_f772sci(var)




Parameters
~~~~~~~~~~


+ **var : local scilab variable. On return, the variable will be**
  overwritten with the result of conversion operation.
+ **res** : if the parameter var is not a variable, the result of the
  conversion is returned in res.




Description
~~~~~~~~~~~

**pvm_f772sci** converts all the complex matrices contained in the
representation of a scilab variable form a f77 coding to the Scilab
complex matrix coding scheme. This can be useful if Scilab is
receiving data from a non scilab application (directly from a C or F77
program for example).

Note that the parameter is passed by adress. It means that if the
parameter is a variable, this variable will be overwritten with the
result of conversion operation. On the other case, if the parameter is
not a variable, the result will be returned in res.



Examples
~~~~~~~~


::

    
    
    a = [1+%i, 2+2*%i,3+3*%i];
    pvm_f772sci(a)
    if norm(a - [1.+2* %i,3.+%i, 2. + 3. *%i ]) >10*%eps then pause;end
     
      




See Also
~~~~~~~~

` **pvm_sci2f77** `_,

.. _
      : ://./pvm/pvm_sci2f77.htm


