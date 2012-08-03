====
"CURV_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Curve
-----



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~
This block defines a tabulated function of time. Between mesh points
block performs a linear interpolation. Outside tabulation block
outputs last tabulated value. User may define the tabulation of the
function using a curve editor.


Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *intplt*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/CURV_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine intplt(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     y=f(t) for f a tabulated function from R to R^ny
    c
    c     ipar(1)             : np number of mesh points
    c     rpar(1:ny+1,1:np) : matrix of mesh point coordinates
    c                       first row contains t coordinate mesh points
    c                       next rows contains y coordinates mesh points
    c                       (one row for each output)
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
    c
          np=ipar(1)
          call intp(t,rpar(1),rpar(1+np),ny,np,y)
    
          end
         




Ramine Nikoukhah 2004-06-22
.. _Interfacing function: ://./scicos/CURV_f.htm#SECTION00517400000000000000
.. _Library: ://./scicos/CURV_f.htm#SECTION00517100000000000000
.. _Computational function (type 0): ://./scicos/CURV_f.htm#SECTION00517500000000000000
.. _Description: ://./scicos/CURV_f.htm#SECTION00517200000000000000
.. _Default properties: ://./scicos/CURV_f.htm#SECTION00517300000000000000


