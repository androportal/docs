====
"scicos_diagram"
====

Subsections

+ `scicos_diagram ( *diagram*)`_
+ `scicos_params ( *params*)`_
+ `default_options ( *scsopt*)`_






Scicos Diagram
--------------



scicos_diagram ( *diagram*)
~~~~~~~~~~~~~~~~~~~~~~~~~~~


+ ** props: ** Scilab object *params*
+ ** objs: ** block or link or deleted object data structure. Deleted
  object data structure is marked list('Deleted'). Default value:
  `list()`



scicos_params ( *params*)
~~~~~~~~~~~~~~~~~~~~~~~~~


+ ** wpar: **viewing parameters: [w,h,Xshift,Yshift]. Default value:
  `[600,450,0,0,600,450]`
+ ** title: ** vector of 2 character string, the first one is the
  diagram title and default name of save file name, the second one is
  the path of the directory of the file name. Default value:
  `["Untitled", "./"]`
+ ** tol: **1 x 4 vector [atol,rtol,ttol,maxt], where atol, rtol are
  respectively absolute and relative tolerances for the ode solver, ttol
  is the minimal distance between to different events time and maxt is
  maximum integration time interval for a single call to the ode solver.
  Default value: `[0.0001,1.000E-06,1.000E-10,100001,0,0]`
+ ** tf: **real scalar, final time for simulation. Default value:
  `100000`
+ ** context: ** vector of character strings, Scilab instructions used
  to define Scilab variables used in block definitions as symbolic
  parameters. Default value: `[]`
+ ** void1: **unused field. Default value: `[]`
+ ** options: ** Scilab object *scsopt*
+ ** void2: **unused field. Default value: `[]`
+ ** void3: **unused field. Default value: `[]`
+ ** doc: ** user defined diagram documentation structure. Default
  value: `list()`



default_options ( *scsopt*)
~~~~~~~~~~~~~~~~~~~~~~~~~~~


+ ** 3D: ** list(With3D,Color3D) . Default value: `list(%t,33)`
+ ** Background: **vector of two color index: The Scicos window
  background and Scicos window foreground color indices . Default value:
  `[8,1]`
+ ** Link: **vector of two color index: The regular linkand the event
  link default colors. Default value: `[1,5]`
+ ** ID: ** ? . Default value: `list([5,1],[4,1])`
+ ** Cmap: ** Complementary colormap added for Scicos . Default value:
  `[0.8,0.8,0.8]`




Ramine Nikoukhah 2004-06-22
.. _): ://./scicos/scicos_diagram.htm#SECTION00311100000000000000
.. _): ://./scicos/scicos_diagram.htm#SECTION00311200000000000000
.. _): ://./scicos/scicos_diagram.htm#SECTION00311300000000000000


