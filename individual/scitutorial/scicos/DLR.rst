====
"DLR"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Discrete transfer function
--------------------------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
This block realizes a SISO linear system represented by its rational
transfer function (in the symbolic variable z). The rational function
must be proper.


Dialog Box
~~~~~~~~~~
Set discrete SISO transfer parameters Numerator (z) 1 Denominator (z)
1+z

+ Numerator :A polynomial in **z**.
+ Denominator : A polynomial in **z**.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *dsslti4*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/DLR.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    
    #include 
    #include "scicos_block.h"
    #include "../os_specific/sci_mem_alloc.h"  /* malloc */
    #include "../machine.h"
    
    extern int C2F(dmmul)();
    extern int C2F(dmmul1)();
    
    
    void dsslti4(scicos_block *block,int flag)
    {
      /* Copyright INRIA
         
      Scicos block simulator
      discrete state space linear system simulator
      rpar(1:nx*nx)=A
      rpar(nx*nx+1:nx*nx+nx*nu)=B
      rpar(nx*nx+nx*nu+1:nx*nx+nx*nu+nx*ny)=C */
      
      int un=1,lb,lc,ld;
      int nz=block->nz;
      double* z=block->z;
      double* rpar=block->rpar;
      double* y=block->outptr[0];
      double* u=block->inptr[0];
      int* outsz=block->outsz;
      int* insz=block->insz;
      double *w;
      
      lb=nz*nz;
      
      if (flag ==1 || flag ==6){
        /* y=c*x+d*u */
        lc=lb+nz*insz[0];
        ld=lc+nz*outsz[0];
        if (nz==0) {
          C2F(dmmul)([ld],outsz,u,insz,y,outsz,outsz,insz,);
        }else{
          C2F(dmmul)([lc],outsz,z,,y,outsz,outsz,,);
          C2F(dmmul1)([ld],outsz,u,insz,y,outsz,outsz,insz,);
        }
      }
      else if (flag ==2){
        /* x+=a*x+b*u */
        if (nz!=0){
          w =*block->work;
          memcpy(w,z,nz*sizeof(double));
          C2F(dmmul)([0],,w,,z,,,,);
          C2F(dmmul1)([lb],,u,insz,z,,,insz,);
        }
      }
      else if (flag ==4){/* the workspace for temp storage
    		      */
        if ((*block->work=
    	 scicos_malloc(sizeof(double)*nz))== NULL ) {
          set_block_error(-16);
          return;
        }
      }
      else if (flag ==5){
        scicos_free(*block->work);
      }
    }




Ramine Nikoukhah 2004-06-22
.. _Library: ://./scicos/DLR.htm#SECTION00581100000000000000
.. _Interfacing function: ://./scicos/DLR.htm#SECTION00581500000000000000
.. _Default properties: ://./scicos/DLR.htm#SECTION00581400000000000000
.. _Description: ://./scicos/DLR.htm#SECTION00581200000000000000
.. _Computational function (type 4): ://./scicos/DLR.htm#SECTION00581600000000000000
.. _Dialog Box: ://./scicos/DLR.htm#SECTION00581300000000000000


