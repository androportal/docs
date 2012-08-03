====
"getvalue"
====

Scilab Function Last update : November 1993
**getvalue** - xwindow dialog for data acquisition



Calling Sequence
~~~~~~~~~~~~~~~~

[ok,x1,..,x14]=getvalue(desc,labels,typ,ini)




Parameters
~~~~~~~~~~


+ **desc** : column vector of strings, dialog general comment
+ **labels** : n column vector of strings, **labels(i)** is the label
  of the ith required value
+ **typ** : **list(typ_1,dim_1,..,typ_n,dim_n)**

    + **typ_i** : defines the type of the ith value, may have the
      following values:

        + **"mat" ** : for constant matrix
        + **"col" ** : for constant column vector
        + **"row" ** : for constant row vector
        + **"vec" ** : for constant vector
        + **"str" ** : for string
        + **"lis" ** : for list

    + **dim_i** : defines the size of the ith value it must be a integer
      or a 2-vector of integer, -1 stands for undefined dimension

+ **ini** : n column vector of strings, **ini(i)** gives the suggested
  response for the ith required value
+ **ok** : boolean ,%t if ok button pressed, %f if cancel button
  pressed
+ **xi** : contains the ith value if ok=%t. If left hand side has one
  more **xi** than required values the last **xi** contains the vector
  of answered strings.




Description
~~~~~~~~~~~

This function encapsulate **x_mdialog** function with error checking,
evaluation of numerical response, ...



Remarks
~~~~~~~

All valid expressions can be used as answers; for matrices and vectors
**getvalues** automatically adds [ ] around the given answer before
numeric evaluation.



Examples
~~~~~~~~


::

    
    
    labels=["magnitude";"frequency";"phase    "];
    [ok,mag,freq,ph]=getvalue("define sine signal",labels,...
         list("vec",1,"vec",1,"vec",1),["0.85";"10^2";"%pi/3"])
     
      




See Also
~~~~~~~~

` **x_mdialog** `_,` **x_matrix** `_,` **x_dialog** `_,



Author
~~~~~~

S. Steer ; ;

.. _
      : ://./gui/x_dialog.htm
.. _
      : ://./gui/x_mdialog.htm
.. _
      : ://./gui/x_matrix.htm


