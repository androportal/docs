====
"TCLSS"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Continuous linear system with jump
----------------------------------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
This block realizes a continuous-time linear state-space system with
the possibility of jumps in the state. The number of inputs to this
block is two. The first input is the regular input of the linear
system, the second carries the new value of the state which is copied
into the state when an event arrives at the unique event input port of
this block. That means the state of the system jumps to the value
present on the second input (of size equal to that of the state). The
system is defined by the matrices and the initial state . The
dimensions must be compatible. The sizes of inputs and outputs are
adjusted automatically.


Dialog Box
~~~~~~~~~~
Set continuous linear system parameters A matrix 0 B matrix 1 C matrix
1 D matrix 0 Initial state 0

+ A matrix: square matrix. The **A **matrix
+ B matrix: the **B** matrix
+ C matrix: the **C** matrix
+ D matrix: the **D** matrix
+ Initial state : vector. The initial state of the system.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 2 / 1 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: yes
+ discrete-time state: no
+ name of computational function: *tcslti4*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/TCLSS.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

     
    #include 
    #include 
    
    #include "scicos_block.h"
    #include "../machine.h"
    
    extern int C2F(dmmul)();
    extern int C2F(dmmul1)();
    
    
    void tcslti4(scicos_block *block,int flag)
    {
      /* Copyright INRIA
       
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
      double* u1=block->inptr[0];
      double* u2=block->inptr[1];
      int* outsz=block->outsz;
      int* insz=block->insz;
        
      lb=nx*nx;
      lc=lb+nx*insz[0];
      
      if (flag ==1 || flag ==6){
        /* y=c*x+d*u1 */  
        ld=lc+nx*outsz[0];
    
        C2F(dmmul)([lc],outsz,x,,y,outsz,outsz,,);
        C2F(dmmul1)([ld],outsz,u1,[0],y,outsz,outsz,[0],);
    
      }else if (flag == 2 && block->nevprt == 1){
        /* x+=u2 */
        memcpy(x,u2 ,nx*sizeof(double));
      }else if (flag ==0 && block->nevprt == 0){
        /* xd=a*x+b*u1 */
        C2F(dmmul)([0],,x,,xd,,,,);
        C2F(dmmul1)([lb],,u1,[0],xd,,,[0],);
      }
    }



Ramine Nikoukhah 2004-06-22
.. _Computational function (type 4): ://./scicos/TCLSS.htm#SECTION00582600000000000000
.. _Description: ://./scicos/TCLSS.htm#SECTION00582200000000000000
.. _Dialog Box: ://./scicos/TCLSS.htm#SECTION00582300000000000000
.. _Default properties: ://./scicos/TCLSS.htm#SECTION00582400000000000000
.. _Interfacing function: ://./scicos/TCLSS.htm#SECTION00582500000000000000
.. _Library: ://./scicos/TCLSS.htm#SECTION00582100000000000000


