====
"CLR"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Continuous transfer function
----------------------------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
This block realizes a SISO linear system represented by its rational
transfer function **Numerator/Denominator**. The rational function
must be proper.


Dialog Box
~~~~~~~~~~
Set continuous SISO transfer parameters Numerator (s) 1 Denominator
(s) 1+s

+ Numerator : A polynomial in s.
+ Denominator :A polynomial in s.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: yes
+ discrete-time state: no
+ name of computational function: *csslti4*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/CLR.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

      
    #include "scicos_block.h"
    #include "../machine.h"
    
    extern int C2F(dmmul)();
    extern int C2F(dmmul1)();
    
    void csslti4(scicos_block *block,int flag)
    {
      /*  Copyright INRIA
    
          Scicos block simulator
          continuous state space linear system simulator
          rpar(1:nx*nx)=A
          rpar(nx*nx+1:nx*nx+nx*nu)=B
          rpar(nx*nx+nx*nu+1:nx*nx+nx*nu+nx*ny)=C
          rpar(nx*nx+nx*nu+nx*ny+1:nx*nx+nx*nu+nx*ny+ny*nu)=D */
      
      int un=1,lb,lc,ld;
      int nx=block->nx;
      double* x=block->x;
      double* xd=block->xd;
      double* rpar=block->rpar;
      double* y=block->outptr[0];
      double* u=block->inptr[0];
      int* outsz=block->outsz;
      int* insz=block->insz;
      
      lb=nx*nx;
      lc=lb+nx*insz[0];
      
      if (flag ==1 || flag ==6){
        /* y=c*x+d*u     */
        ld=lc+nx*outsz[0];
        if (nx==0) {
          C2F(dmmul)([ld],outsz,u,insz,y,outsz,outsz,insz,);
        }else{
          C2F(dmmul)([lc],outsz,x,,y,outsz,outsz,,);
          C2F(dmmul1)([ld],outsz,u,insz,y,outsz,outsz,insz,);
        }
      }
    
      else if (flag ==0){
        /* xd=a*x+b*u */
        C2F(dmmul)([0],,x,,xd,,,,);
        C2F(dmmul1)([lb],,u,insz,xd,,,insz,);
      }
    }




Ramine Nikoukhah 2004-06-22
.. _Interfacing function: ://./scicos/CLR.htm#SECTION00588500000000000000
.. _Library: ://./scicos/CLR.htm#SECTION00588100000000000000
.. _Default properties: ://./scicos/CLR.htm#SECTION00588400000000000000
.. _Computational function (type 4): ://./scicos/CLR.htm#SECTION00588600000000000000
.. _Dialog Box: ://./scicos/CLR.htm#SECTION00588300000000000000
.. _Description: ://./scicos/CLR.htm#SECTION00588200000000000000


