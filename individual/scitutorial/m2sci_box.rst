


box (Matlab function)
=====================

Display axes border



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    box



::

    No equivalent




Particular cases
~~~~~~~~~~~~~~~~

There is no Scilab equivalent function for Matlab box but it can be
easyly replaced by Scilab equivalent instructions.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    box on
    box off
    box
    box(h,'on')
    box(h,'off')
    box(h)



::

    a = `gca`_();
    a.box = "on";
    a.box = "off";
    if a.box=="on" then a.box="off";else a.box="on";end;
    h.box = "on";
    h.box = "off";
    if h.box=="on" then h.box="off";else h.box="on";end;




