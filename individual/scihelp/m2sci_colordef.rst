


colordef (Matlab function)
==========================

Set default property values to display different color schemes



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `colordef`_



::

    No equivalent




Particular cases
~~~~~~~~~~~~~~~~

:[h = ]mtlb_colordef(color_option) Scilab equivalent is **fig =
  gcf();fig.background = -1;[h = fig];** if **color_option** is equal to
  "black" or "none" and **fig = gcf();fig.background = -1;[h = fig];**
  else.
: :[h = ]mtlb_colordef(fig,color_option) Considering **fig** is a
  graphics handle, Scilab equivalent is **fig.background = -1;[h =
  fig];** if **color_option** is equal to "black" or "none" and
  **fig.background = -2;[h = fig];** else.
: :[h = ]mtlb_colordef('new',color_option) Scilab equivalent is
  **fig=scf(max(winsid())+1);fig.background = -1;[h = fig];** if
  **color_option** is equal to "black" or "none" and
  **fig=scf(max(winsid())+1);fig.background = -2;[h = fig];** else.
:



