


x_matrix
========

Xwindow editing of matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [result]=x_matrix(label,matrix-init)




Arguments
~~~~~~~~~

:label character string (name of matrix)
: :matrix-init real matrix
:



Description
~~~~~~~~~~~

For reading or editing a matrix .



Examples
~~~~~~~~


::

    m=`evstr`_(x_matrix('enter a  3x3 matrix ',`rand`_(3,3)))




See Also
~~~~~~~~


+ `x_mdialog`_ Dialog for interactive vector/matrix input.
+ `x_dialog`_ Dialog for interactive multi-lines input.


.. _x_dialog: x_dialog.html
.. _x_mdialog: x_mdialog.html


