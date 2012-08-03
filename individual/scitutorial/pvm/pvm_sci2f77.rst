====
"pvm_sci2f77"
====

Scilab function Last update : May 1998
**pvm_sci2f77** - Convert complex scalar into F77



Calling Sequence
~~~~~~~~~~~~~~~~

[res] = pvm_sci2f77(var)




Parameters
~~~~~~~~~~


+ **var : local scilab variable. On return, the variable will be**
  overwritten with the result of conversion operation.
+ **res** : if the parameter var is not a variable, the result of the
  conversion is returned in res.




Description
~~~~~~~~~~~

**pvm_sci2f77** converts all the complex of a scilab variable (array,
list...) in the F77 representation. MAy be useful if an application is
sendind data to a non scilab application (direcvtly to a C or F77
program for example).

Note that the parameter is passed by adress. It means that if the
parameter is a variable, this variable will be overwritten with the
result of conversion operation. On the other case, if the parameter is
not a variable, the result will be returned in res.



Examples
~~~~~~~~


::

    
    
    a = [1+%i, 2+2*%i,3+3*%i];
    pvm_sci2f77(a) 
    if norm(a - [1.+2* %i,1+3*%i, 2. + 3. *%i ]) >10*%eps then pause;end
     
      




See Also
~~~~~~~~

` **pvm_f772sci** `_,

.. _
      : ://./pvm/pvm_f772sci.htm


