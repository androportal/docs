


demo_choose
===========

create a dialog box for the choice of options



Calling Sequence
~~~~~~~~~~~~~~~~


::

    num = demo_choose(fil)




Description
~~~~~~~~~~~

The function demo_choose create a dialog box for the choice of
options. It takes as argument the binary file 'fil'. This file is
built by a .sce file written like below. It shall contain the
variables 'choice', an array of text within bracket (the different
options), and 'titl', the title of the dialog box. After that, the
.sce file shall save both variables in the binary file in argument.
Before the use of demo_choose, the .sce file shall be executed. The
function demo_choose returns the number of line chosen in the options
array.



Examples
~~~~~~~~


::

    `exec`_('SCI/demos/control/pid/pid_ch_2.sce');
    [n]=demo_choose('SCI/demos/control/pid/pid_ch_2.bin');
    select n
      case 0
        break
      case 1
        `mode`_(1)
      case 2
        `mode`_(-1)
    end




See Also
~~~~~~~~


+ `x_choose`_ interactive window choice (modal dialog)
+ `demo_mdialog`_ create a dialog box


.. _demo_mdialog: demo_mdialog.html
.. _x_choose: x_choose.html


