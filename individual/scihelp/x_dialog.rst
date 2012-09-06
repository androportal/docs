


x_dialog
========

Dialog for interactive multi-lines input.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result=x_dialog(labels,valueini)




Arguments
~~~~~~~~~

:labels column vector of strings, comment for dialog
: :valueini n column vector of strings, initial value suggested
: :result User answer: n column vector of strings if returned with
  "Ok" button or [] if returned with "Cancel" button
:



Description
~~~~~~~~~~~

Opens a dialog for interactive multi-lines input.



Examples
~~~~~~~~


::

    gain=`evstr`_(x_dialog('value of gain ?','0.235'))
    x_dialog(['Method';'enter sampling period'],'1')
    m=`evstr`_(x_dialog('enter a  3x3 matrix ',['[0 0 0';'0 0 0';'0 0 0]']))




See Also
~~~~~~~~


+ `x_mdialog`_ Dialog for interactive vector/matrix input.
+ `x_matrix`_ Xwindow editing of matrix
+ `evstr`_ evaluation of expressions
+ `execstr`_ execute Scilab code in strings


.. _x_matrix: x_matrix.html
.. _x_mdialog: x_mdialog.html
.. _execstr: execstr.html
.. _evstr: evstr.html


