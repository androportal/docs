====
"LOOKUP_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Lookup table
------------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
This block realizes a non-linear function defined using a graphical
editor.


Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *lookup*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/LOOKUP_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine lookup(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     rpar(1:n)  =  u coordinate discretisation must be strictly increasing
    c     rpar(n+1:2*n)  =  y coordinate discretisation
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
          double precision du,dout
          integer i
    c
          n=nrpar/2
          if(n.gt.2) then
             do 10 i=2,n-1
                if (u(1).le.rpar(i)) goto 20
     10      continue
          else
             if(n.eq.1) then
                y(1)=rpar(2)
                return
             endif
             i=2
          endif
     20   continue
          du=rpar(i)-rpar(i-1)
          dout=rpar(n+i)-rpar(n+i-1)
          y(1)=rpar(n+i)-(rpar(i)-u(1))*dout/du
          end




Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/LOOKUP_f.htm#SECTION00548300000000000000
.. _Interfacing function: ://./scicos/LOOKUP_f.htm#SECTION00548400000000000000
.. _Library: ://./scicos/LOOKUP_f.htm#SECTION00548100000000000000
.. _Computational function (type 0): ://./scicos/LOOKUP_f.htm#SECTION00548500000000000000
.. _Description: ://./scicos/LOOKUP_f.htm#SECTION00548200000000000000


