


close (Matlab function)
=======================

Delete specified figure



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `close`_



::

    `close`_ - xdel - delete




Particular cases
~~~~~~~~~~~~~~~~

:close If current figure is a uicontrol one, Scilab and Matlab
  **close** are equivalent. But if current figure is a graphic window,
  Scilab equivalent for Matlab **close** is **delete(gcf())**.
: :close(h) If **h** is a uicontrol figure, Scilab and Matlab
  **close(h)** are equivalent. But if **h** is a graphic window, Scilab
  equivalent for Matlab **close(h)** is **delete(h)**.
: :close('all') Scilab equivalent for Matlab **close('all')** is
  **xdel(winsid())**.
: :close(name) There is no Scilab equivalent for Matlab
  **close(name)** however, **mtlb_close** can be an equivalent.
: :close('all','hidden') Scilab equivalent for Matlab
  **close('all','hidden')** is **xdel(winsid())** but Scilab kills all
  figures even if they are hidden.
:



