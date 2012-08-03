====
"x_mdialog"
====

Scilab Function Last update : 16/12/2005
**x_mdialog** - Xwindow dialog



Calling Sequence
~~~~~~~~~~~~~~~~

result=x_mdialog(title,labels,default_inputs_vector)
result=x_mdialog(title,labelsv,labelsh,default_input_matrix)




Parameters
~~~~~~~~~~


+ **title** : column vector of strings, dialog general comment
+ **labels** : n column vector of strings, **labels(i)** is the label
  of the ith required value
+ **default_input_vector** : n column vector of strings,
  **default_input_vector(i)** is the initial value of the ith required
  value
+ **labelsv** : n vector of strings, **labelsv(i)** is the label of
  the ith line of the required matrix
+ **labelsh** : m vector of strings, **labelsh(j)** is the label of
  the jth column of the required matrix
+ **default_input_matrix** : n x m matrix of strings,
  **default_input_matrix(i,j)** is the initial value of the (i,j)
  element of then required matrix
+ **result** : n x m matrix of string if returned with "Ok" button or
  [] if returned with "Cancel" button




Description
~~~~~~~~~~~

X-window vector/matrix interactive input function



Examples
~~~~~~~~


::

    
    
     txt=['magnitude';'frequency';'phase    '];
     sig=x_mdialog('enter sine signal',txt,['1';'10';'0'])
     mag=evstr(sig(1))
     frq=evstr(sig(2))
     ph=evstr(sig(3))
    
     rep=x_mdialog(['System Simulation';'with PI regulator'],...
                          ['P gain';'I gain '],[' ';' '])
     
      




See Also
~~~~~~~~

` **editvar** `_,` **x_dialog** `_,` **x_choose** `_,` **x_message**
`_,` **getvalue** `_,` **evstr** `_,` **execstr** `_,` **editvar** `_,

.. _
      : ://./gui/x_message.htm
.. _
      : ://./gui/../programming/evstr.htm
.. _
      : ://./gui/../programming/execstr.htm
.. _
      : ://./gui/getvalue.htm
.. _
      : ://./gui/x_dialog.htm
.. _
      : ://./gui/editvar.htm
.. _
      : ://./gui/x_choose.htm


