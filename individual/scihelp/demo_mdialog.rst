


demo_mdialog
============

create a dialog box



Calling Sequence
~~~~~~~~~~~~~~~~


::

    resp = demo_mdialog(fil)




Description
~~~~~~~~~~~

The function demo_mdialog create a dialog box. It takes as argument a
binary file. This file is built by a .sce file written like below. It
shall contain the variables 'titl', the title a the dialog box,
'namevar', the name of the fields to fill, and 'value', the values
written by default. After this, these three variables shall be saved
in the binary file. The use of demo_mdialog shall be preceded by the
execution of the .sce associated. The function demo_mdialog returns
'resp', the values chosen by the user.



Examples
~~~~~~~~


::

    `exec`_('SCI/demos/control/pid/pid_dial_4.sce');
    [defv]=demo_mdialog('SCI/demos/control/pid/pid_dial_4.bin');  
      
    if defv==[] then `warning`_('Demo stops!');return;end




See Also
~~~~~~~~


+ `demo_choose`_ create a dialog box for the choice of options
+ `x_mdialog`_ Dialog for interactive vector/matrix input.
+ `x_dialog`_ Dialog for interactive multi-lines input.


.. _demo_choose: demo_choose.html
.. _x_mdialog: x_mdialog.html
.. _x_dialog: x_dialog.html


