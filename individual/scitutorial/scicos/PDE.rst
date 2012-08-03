====
"PDE"
====


Subsections


+ Library
+ Description
+ Dialog Box
+ Default properties
+ Interfacing function
+ Computational function (type 12004)








PDE
---




Library
~~~~~~~

PDETOOLBOX


Description
~~~~~~~~~~~

This block is an implementation of several numerical schemes (Finite
Elements (1st and 2nd order), Finite Differences (1st and 2nd order),
Finite Volumes (1st order)) to solve mono dimensional PDE (Partial
Differential Equation) within SCICOS. The methematical framwork was
restricts in PDEs linear scalars with maximum order 2 in time and
space. The goal is to provide engineers and physicists with an easy to
use toolbox in SCICOS that will let them graphically describe the PDE
to be solved. A decision system selects the most efficient numerical
scheme depending on the type of the PDE and runs the solvers.


Dialog Box
~~~~~~~~~~

Set PDE block parameters (IHM box)

**a** and **b**

(double) The two edges of the discretization field

specification de l'EDP

check box to select the PDE operators

ai(x), bi(t) (i=1:7) are the operator coefficients

type of PDE discriminant (constant or variable, in the later case, the
sign should be given)

Discretization methode

choix (check box) : is the choice for the manual or the automatic mode

type : in the manual mode we can give the method type (Finte
differences, finite elements or finite volumes)

degr : method degre (1 or 2 for the FD and FE methods, 1 for the FV
method).

Nombre de noeuds : to give the numbre of the nodal points

Conditions initiales

u(x,t0)=, du/dt at t0= : to give the initial conditions.

Conditions aux limites

type : two type of the boundray conditions are possible : Dirichlet or
Neumann

expressions : to give then boundray conditions expressions

Points de mesures

To give the list of mesurment points

Name

A getvalue box to give the block name's



Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: -1 / -1
+ number/sizes of outputs: -1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: yes
+ discrete-time state: no
+ name of computational function: *nom_implicite*



Interfacing function
~~~~~~~~~~~~~~~~~~~~

SCI/EDP/macros/PDE.sci


Computational function (type 12004)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





::

    #include "scicos_block.h"
    #include 
     
    void  exe_implicite(scicos_block *block,int flag)
    {
     
     double **inptr = block->inptr;
     double **outptr = block->outptr;
     double *x = block->x;
     int nx = block->nx;
     double *xd = block->xd;
     double *res = block->res;
     int property[10];
     
     int i;
     double t = get_scicos_time();
     
     if (flag == 0){
       res[0]=inptr[2][0]-x[0];
       res[1]=inptr[1][0]-(-81*x[0]+162*x[1]-81*x[2])*inptr[0][0];
       res[2]=inptr[1][0]-(-81*x[1]+162*x[2]-81*x[3])*inptr[0][0];
       res[3]=inptr[1][0]-(-81*x[2]+162*x[3]-81*x[4])*inptr[0][0];
       res[4]=inptr[1][0]-(-81*x[3]+162*x[4]-81*x[5])*inptr[0][0];
       res[5]=inptr[1][0]-(-81*x[4]+162*x[5]-81*x[6])*inptr[0][0];
       res[6]=inptr[1][0]-(-81*x[5]+162*x[6]-81*x[7])*inptr[0][0];
       res[7]=inptr[1][0]-(-81*x[6]+162*x[7]-81*x[8])*inptr[0][0];
       res[8]=inptr[1][0]-(-81*x[7]+162*x[8]-81*x[9])*inptr[0][0];
       res[9]=inptr[3][0]-x[9];
     }else if (flag == 1){
       /* la premire sortie */ 
       for (i=0;i<10;i++){
         outptr[0][i]=x[i];
       }
       /* la deuxime sortie */ 
       outptr[1][0]=x[4];
       outptr[1][1]=x[9];
     }else if (flag == 4){
    /* }else if (flag == 5){ */
     }else if (flag == 7){
       property[0]=-1;
       property[1]=-1;
       property[2]=-1;
       property[3]=-1;
       property[4]=-1;
       property[5]=-1;
       property[6]=-1;
       property[7]=-1;
       property[8]=-1;
       property[9]=-1;
      set_pointer_xproperty(property);
     }
     return;
    }






EADS 2005-01-16


