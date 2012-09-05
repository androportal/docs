


x_choose_modeless
=================

interactive window choice (not modal dialog)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [num]=x_choose_modeless(items,title [,button])




Arguments
~~~~~~~~~

:items column vector of string, items to choose
: :title column vector of string, comment for the dialog
: :button string, text to appear in the button. Default value is
  'Cancel'
: :num integer, chosen item number or 0 if dialog resumed with
  "Cancel" button
:



Description
~~~~~~~~~~~

Returns in `num` the number of the chosen item.



Examples
~~~~~~~~


::

    n = x_choose_modeless(['item1';'item2';'item3'],['that is a comment';'for the dialog'])
    n = x_choose_modeless(['item1';'item2';'item3'],['that is a comment'],'Return')




See Also
~~~~~~~~


+ `x_choose`_ interactive window choice (modal dialog)
+ `x_choices`_ interactive Xwindow choices through toggle buttons
+ `x_mdialog`_ Dialog for interactive vector/matrix input.
+ `getvalue`_ xwindow dialog for data acquisition
+ `unix_g`_ shell (sh) command execution, output redirected to a
  variable


.. _x_mdialog: x_mdialog.html
.. _x_choose: x_choose.html
.. _getvalue: getvalue.html
.. _x_choices: x_choices.html
.. _unix_g: unix_g.html


