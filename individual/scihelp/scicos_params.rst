


scicos_params
=============

Define a param structure



Module
~~~~~~


+ `xcos`_




params
~~~~~~

Size : 11.

Type : scilab list.




+ **wpar** This vector is not currently used. It may be used in the
  future to code window sizes of the editor. Size : 6. Type : column
  vector or real.
+ **title** Vector of character strings, where the first one is the
  diagram title and default name of save file name, and the second one
  is the path of the directory of the file name. Size : 2. Type : row
  vector of strings.
+ **tol** A vector containing simulation parameters including various
  tolerances used by the solver:

    + **atol** Integrator absolute tolerance for the numerical solver.
    + **rtol** Integrator relative tolerance for the numerical solver.
    + **ttol** Tolerance on time. If an integration period is less than
      ttol, the numerical solver is not called.
    + **deltat** Maximum integration time interval. If an integration
      period is larger than deltat, the numerical solver is called more than
      once in such a way that for each call the integration period remains
      below deltat
    + **scale** Real-time scaling; the value 0 corresponds to no real-time
      scaling. It associates a Scicos simulation time to the real time in
      seconds. A value of 1 means that each Scicos unit of time corresponds
      to one second.
    + **solver** Choice of numerical solver. The value 0 implies an ODE
      solver and 100 implies a DAE solver.
    + **hmax** Maximum step size for the numerical solver. 0 means no
      limit.
  Size : 7. Type : column vector of real.
+ **tf** Final time simulation. The simulation stops at this time. The
  default value is 100000. Size : 1. Type : real.
+ **context** A vector of strings containing Scilab instructions
  defining Scilab variables to be used inside block's dialog box as
  symbolic parameters. All valid Scilab instructions can be used and
  also comments. Size : number of lines of the context. Type : column
  vector of strings.
+ **void1** unused field. Size : -. Type : -.
+ **options** Scilab object of type scsopt defining graphical
  properties of the editor such as background color and link color. The
  fields are the following:

    + **3D** A list with two entries. The first one is a boolean
      indicating whether or not blocks should have 3D aspect. The second
      entry indicates the color in the current colormap to be used to create
      the 3D effect. The default is 33 which corresponds to gray added by
      Scicos to the standard colormap, which contains 32 colors. The default
      value is list(%t,33).
    + **Background** Vector with two entries: background and foreground
      colors. The default value is [8,1].
    + **link** Default link colors for regular and activation links. These
      colors are used only at link construction. Changing them does not
      affect already constructed links. The default value is [1,5], which
      corresponds to black and red if the standard Scilab colormap is used.
    + **ID** A list of two vectors including font number and sizes. The
      default value is [5,1],[4,1].
    + **Cmap** An n,3 matrix containing RGB values of colors to be added
      to the colormap. The default value is, [0.8,0.8,0.8] i.e., the color
      gray.
  Size : 6. Type : scilab tlist of type scsopt.
+ **void2** unused field. Size : -. Type : -.
+ **void3** unused field. Size : -. Type : -.
+ **doc** User defined diagram documentation structure. Size : 1. Type
  : Strings.




File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_scicos/scicos_params.sci


.. _xcos: xcos.html


