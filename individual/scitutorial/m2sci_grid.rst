


grid (Matlab function)
======================

Grid lines for two- and three-dimensional plots



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    grid



::

    No equivalent




Particular cases
~~~~~~~~~~~~~~~~

There is no minor grid in Scilab.

There is no equivalent function for Matlab **grid** function in Scilab
but it has equivalents:

:grid on may be replaced by **set(gca(),"grid",[1 1])**
: :grid off may be replaced by **set(gca(),"auto_clear",[-1 -1])**
: :grid minor can be emuled in Scilab by **mtlb_hold** but all grids
  are toggled
: :grid can be emuled in Scilab by **mtlb_hold**
: :grid(axes_handle,"on") may be replaced by **axes_handle.grid=[1
  1]**
: :grid(axes_handle,"off") may be replaced by **axes_handle.grid=[-1
  -1]**
: :grid(axes_handle,"minor") can be emuled in Scilab by **mtlb_hold**
  but all grids are toggled
: :grid(axes_handle) can be emuled in Scilab by
  **mtlb_hold(axes_handle)**
:



