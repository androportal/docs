


x_mdialog
=========

Dialog for interactive vector/matrix input.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result=x_mdialog(title,labels,default_inputs_vector)
    result=x_mdialog(title,labelsv,labelsh,default_input_matrix)




Arguments
~~~~~~~~~

:title column vector of strings, dialog general comment
: :labels n column vector of strings, `labels(i)` is the label of the
  ith required value
: :default_input_vector n column vector of strings,
  `default_input_vector(i)` is the initial value of the ith required
  value
: :labelsv n vector of strings, `labelsv(i)` is the label of the ith
  line of the required matrix
: :labelsh m vector of strings, `labelsh(j)` is the label of the jth
  column of the required matrix
: :default_input_matrix n x m matrix of strings,
  `default_input_matrix(i,j)` is the initial value of the (i,j) element
  of then required matrix
: :result n x m matrix of string if returned with "Ok" button or [] if
  returned with "Cancel" button
:



Description
~~~~~~~~~~~

Opens a dialog for interactive vector/matrix input.



Examples
~~~~~~~~


::

    txt = ['magnitude';'frequency';'phase    '];
    sig = x_mdialog('enter sine signal',txt,['1';'10';'0'])
    mag = `evstr`_(sig(1))
    frq = `evstr`_(sig(2))
    ph  = `evstr`_(sig(3))
    
    rep = x_mdialog(['System Simulation';'with PI regulator'],...
                     ['P gain';'I gain '],[' ';' '])




See Also
~~~~~~~~


+ `editvar`_ Scilab variable editor
+ `x_dialog`_ Dialog for interactive multi-lines input.
+ `x_choose`_ interactive window choice (modal dialog)
+ `messagebox`_ Open a message box.
+ `getvalue`_ xwindow dialog for data acquisition
+ `evstr`_ evaluation of expressions
+ `execstr`_ execute Scilab code in strings


.. _execstr: execstr.html
.. _x_choose: x_choose.html
.. _getvalue: getvalue.html
.. _editvar: editvar.html
.. _x_dialog: x_dialog.html
.. _messagebox: messagebox.html
.. _evstr: evstr.html


