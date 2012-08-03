====
"RELAY_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 2)`_







Relay
-----



Library
~~~~~~~
Branching


Description
~~~~~~~~~~~
This block routes one of the regular inputs to the unique regular
output. the choice of which input is to be routed is done, initially
by the "initial connected input" parameter. Then, every time an input
event arrives on the i-th input event port, the i-th regular input
port is routed to the regular output.


Dialog Box
~~~~~~~~~~
Set parameters number of inputs 2 initial connected input 1

+ number of inputs: a scalar. Number of regular and event inputs.
+ initial connected input: an integer. It must be between 1 and the
  number of inputs.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 2 / -1 -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 2 / 1 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *relay*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/branching/RELAY_f.sci


Computational function (type 2)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    /* Copyright INRIA */
    #include "../machine.h"
    
    void 
    relay(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,rpar,nrpar,
    	       ipar,nipar,inptr,insz,nin,outptr,outsz,nout)
    integer *flag,*nevprt,*nx,*nz,*ntvec,*nrpar,ipar[],*nipar,insz[],*nin,outsz[],*nout;
    double x[],xd[],z[],tvec[],rpar[];
    double *inptr[],*outptr[],*t;
    
    {
    
        int k;
        double *y;
        double *u;
        int nev,ic;
        ic=(int)z[0];
        if ((*flag)<3) {
          if ((*nevprt)>0) {
    	ic=-1;
    	nev=*nevprt;
    	while (nev>=1) {
    	  ic=ic+1;
    	  nev=nev/2;
    	}
          }
          if ((*flag)==2) {z[0]=ic;return ;}
          if (*nin>1) {
    	y=(double *)outptr[0];
    	u=(double *)inptr[ic];
    	for (k=0;k<outsz[0];k++)
    	  *(y++)=*(u++);  
          }
          else {
    	y=(double *)outptr[ic];
    	u=(double *)inptr[0];
    	for (k=0;k<outsz[0];k++)
    	  *(y++)=*(u++);  
          }
        }
    }
    



Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/RELAY_f.htm#SECTION00537400000000000000
.. _Dialog Box: ://./scicos/RELAY_f.htm#SECTION00537300000000000000
.. _Interfacing function: ://./scicos/RELAY_f.htm#SECTION00537500000000000000
.. _Computational function (type 2): ://./scicos/RELAY_f.htm#SECTION00537600000000000000
.. _Description: ://./scicos/RELAY_f.htm#SECTION00537200000000000000
.. _Library: ://./scicos/RELAY_f.htm#SECTION00537100000000000000


