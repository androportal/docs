====
"x_dialog"
====

Scilab Function Last update : April 1993
**x_dialog** - Xwindow dialog



Calling Sequence
~~~~~~~~~~~~~~~~

result=x_dialog(labels,valueini)




Parameters
~~~~~~~~~~


+ **labels** : column vector of strings, comment for dialog
+ **valueini** : n column vector of strings, initial value suggested
+ **result** : response : n column vector of strings if returned with
  "Ok" button or [] if returned with "Cancel" button




Description
~~~~~~~~~~~

Creates an X-window multi-lines dialog



Examples
~~~~~~~~


::

    
    
    gain=evstr(x_dialog('value of gain ?','0.235'))
    x_dialog(['Method';'enter sampling period'],'1')
    m=evstr(x_dialog('enter a  3x3 matrix ',['[0 0 0';'0 0 0';'0 0 0]']))
     
      




See Also
~~~~~~~~

` **x_mdialog** `_,` **x_matrix** `_,` **evstr** `_,` **execstr** `_,

.. _
      : ://./gui/x_mdialog.htm
.. _
      : ://./gui/../programming/execstr.htm
.. _
      : ://./gui/../programming/evstr.htm
.. _
      : ://./gui/x_matrix.htm


