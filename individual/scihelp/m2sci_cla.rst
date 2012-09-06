


cla (Matlab function)
=====================

Clear current axes



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    cla



::

    No equivalent




Particular cases
~~~~~~~~~~~~~~~~

:cla Scilab equivalent could be **a = gca();delete(a.children);** but
  in this case, all current axes children will be deleted because there
  is no HandleVisibility property in Scilab graphics.
: :cla reset Scilab equivalent is **a = gca();delete(a.children);**.
:



